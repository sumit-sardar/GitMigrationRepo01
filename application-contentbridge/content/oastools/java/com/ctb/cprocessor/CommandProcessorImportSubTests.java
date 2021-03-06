package com.ctb.cprocessor;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import net.sf.hibernate.Session;

import org.apache.log4j.Logger;
import org.jdom.Element;

import com.ctb.common.tools.SystemException;
import com.ctb.hibernate.HibernateSession;
import com.ctb.hibernate.HibernateUtils;
import com.ctb.xmlProcessing.XMLConstants;
import com.ctb.xmlProcessing.XMLUtils;
import com.ctb.xmlProcessing.item.ItemProcessor;
import com.ctb.xmlProcessing.item.ItemProcessorFactory;
import com.ctb.mapping.ItemMap;
import com.ctb.mapping.Objectives;
import com.ctb.reporting.ItemProcessorReport;
import com.ctb.reporting.ItemSetReport;
import com.ctb.reporting.Report;
import com.ctb.reporting.ReportFactory;
import com.ctb.reporting.SubTestProcessorReport;
import com.ctb.sofa.SubTestProcessorSofa;

/* TODO - arvind - deprecate/remove this class if CommandProcessorImportAssessment works
 * @deprecated Sub Tests will now be processed by CommandProcessorImportAssessment
 */
public class CommandProcessorImportSubTests implements CommandProcessor {
    private static Logger logger =
        Logger.getLogger(CommandProcessorImportSubTests.class);
    private final SubTestProcessorSofa subTestProcessor;
    private final ItemProcessor itemProcessor;
    private final Element subTestElement;
    private final Connection connection;

    public CommandProcessorImportSubTests(
        Objectives objectives,
        ItemMap itemMap,
        Element subTestElement,
        Connection connection) {
        Session session = HibernateUtils.getSession(connection);
        this.itemProcessor =
            ItemProcessorFactory.getItemProcessorBuildTestSofa(
                objectives,
                itemMap,
                session);
        this.subTestProcessor = new SubTestProcessorSofa(session);
        this.subTestElement = subTestElement;
        this.connection = connection;
    }

    public Report process() {
        SubTestProcessorReport report = ReportFactory.createSubTestReport(false);

        CommandProcessorUtility.verifyRootElementName(
            this.subTestElement.getName(),
            XMLConstants.ELEMENT_NAME_TS);

        try {
            Map mappedItemIds = new HashMap();
            ItemSetReport isr =
                processItems(this.subTestElement, mappedItemIds);
            report.addSubReport(isr);

            if (isr.isSuccess()) {
                CommandProcessorUtility.mapItemIDsInXML(
                    this.subTestElement,
                    mappedItemIds);
                this.subTestProcessor.processSubTest(this.subTestElement);
            } else
                throw new SystemException("Some Items in the SubTest failed");
            HibernateSession.currentSession().flush();
            connection.commit();
            report.setSuccess(true);
            logger.info("<SubTest> committed to database successfully.");
        } catch (Exception e) {
            report.setException(e);
            logger.error(
                "<SubTest> failed - rollback changes from database",
                e);
            try {
                connection.rollback();
            } catch (SQLException e1) {
                logger.error("Rollback SubTest database changes failed", e1);
            }
        } 
//        finally 
        {
            return report;
        }
    }

    private ItemSetReport processItems(
        Element subTestElement,
        Map mappedItemIds) {
        Iterator items =
            XMLUtils.getItemSubElementsInItemSets(subTestElement);
        ItemSetReport report = ReportFactory.createItemSetReport(true);
        while (items.hasNext())
            processItem(((Element) items.next()), report, mappedItemIds);
        return report;
    }

    private void processItem(
        Element item,
        ItemSetReport report,
        Map mappedItemIds) {
        try {
            this.itemProcessor.process(item);
            ItemProcessorReport r = ItemProcessorReport.getCurrentReport();
            mappedItemIds.put(r.getID(), r.getNewID());
        } catch (Exception e) {
            CommandProcessorUtility.handleItemException(e, logger);
        } finally {
            report.addSubReport(ItemProcessorReport.getCurrentReport());
        }
    }

}
