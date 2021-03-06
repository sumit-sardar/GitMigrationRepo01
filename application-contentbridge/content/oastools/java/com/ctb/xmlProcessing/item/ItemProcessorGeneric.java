package com.ctb.xmlProcessing.item;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

import org.jdom.Element;

import com.ctb.common.tools.ADSConfig;
import com.ctb.common.tools.OASConstants;
import com.ctb.reporting.ItemProcessorReport;
import com.ctb.reporting.AbstractXMLElementReport;
import com.ctb.xmlProcessing.itemset.TestItemProcessor;

public class ItemProcessorGeneric implements ItemProcessor {

    private static ThreadLocal _current = new ThreadLocal();
    public final OpenDeploy openDeploy;
    public final ItemBuilder builder;
    public final ItemValidator sourceValidator;
    public final ItemMapper mapper;
    public final ItemWriter writer;
    public final ItemMediaGenerator mediaGenerator;
    public final String operation;
    public final ArrayList unicodeList;
    public final ADSConfig adsConfig;
    public final String maxPanelWidth;
    public final String includeAcknowledgment;
    
    public static Collection getCurrentItemList() {
        return (Collection) _current.get();
    }
    
    public static void setCurrentItemList(Collection report) {
        _current.set(report);
    }
    
    public static boolean isItemProcessed( String id )
    {
        boolean itemProcessed = false;
        Collection theItems = getCurrentItemList();
        if ( theItems == null )
        {
            theItems = new ArrayList();
            setCurrentItemList( theItems );
        }
        itemProcessed = theItems.contains( id );
        return itemProcessed;
    }
    
    public static void setItemProcessed( String id )
    {
        Collection theItems = getCurrentItemList();
        theItems.add( id );
    }

    public ItemProcessorGeneric(
        OpenDeploy openDeploy,
        ItemBuilder builder,
        ItemValidator sourceValidator,
        ItemMapper mapper,
        ItemMediaGenerator mediaGenerator,
        ItemWriter writer,
        String operation,
        ArrayList unicodeList,
        ADSConfig adsConfig,
        String maxPanelWidth,
        String includeAcknowledgment) {
        this.openDeploy = openDeploy;
        this.builder = builder;
        this.sourceValidator = sourceValidator;
        this.mapper = mapper;
        this.mediaGenerator = mediaGenerator;
        this.writer = writer;
        this.operation = operation;
        this.unicodeList=unicodeList;
        this.adsConfig=adsConfig;
        this.maxPanelWidth = maxPanelWidth;
        this.includeAcknowledgment = includeAcknowledgment;
    }
    
    public void getAttributeFromTestItem( Item mappedItem )
    {
        HashMap attributeMap = TestItemProcessor.getCurrentItemAttributeMap();
        if ( attributeMap != null )
        {
            mappedItem.setSample( "Yes".equals( attributeMap.get( "Sample" ) )? OASConstants.TRUE : OASConstants.FALSE );
            mappedItem.setSuppressed( "Yes".equals( attributeMap.get( "SuppressScore" ) )? OASConstants.TRUE : OASConstants.FALSE );
            mappedItem.setFieldTest( "Yes".equals( attributeMap.get( "FieldTest" ) )? OASConstants.TRUE : OASConstants.FALSE );
            mappedItem.setScaleScore( "Yes".equals( attributeMap.get( "ScaleScore" ) )? OASConstants.TRUE : OASConstants.FALSE );
        }
    }

    public AbstractXMLElementReport process(Element itemElement) {
        ItemProcessorReport r = ItemProcessorReport.getCurrentReport();
        r.setOperation(this.operation);

        openDeploy.run(itemElement);

        Item item = this.builder.build(itemElement);
        updateItemProcessorReport(item, r);

        this.sourceValidator.validate(item);

        Item mappedItem = null;
        try {
            mappedItem = this.mapper.mapItem(item);
        } catch (IdentityMappingException e) {
            r.setException(e);
            mappedItem = item;
            setAlignmentInformation(r, mappedItem);
            return r;
        }
        getAttributeFromTestItem( mappedItem );
        setAlignmentInformation(r, mappedItem);
        if ( !isItemProcessed( r.getID() ))
        {
            ItemLayoutPublisher itemLayout = new ItemLayoutPublisher(unicodeList, adsConfig, maxPanelWidth, includeAcknowledgment);
        	mappedItem.setLayoutElement(itemLayout.publishLayout(itemElement));
            mappedItem.setMedia(null);
  //  		if (!"NI".equals(mappedItem.getType()))
    			r.setNewID(this.writer.write(mappedItem));
            setItemProcessed( r.getID() );
        }
        else
        {
 //   		if (!"NI".equals(mappedItem.getType()))
    			this.writer.writeDatapointConditionCode( mappedItem );
            r.setNewID( r.getID() );
        }
        
        return r;
    }

    public void setAlignmentInformation(ItemProcessorReport r, Item mappedItem) {
        r.setFrameworkCode(mappedItem.getFrameworkCode());
        setObjectiveList(r, mappedItem,this.mapper);
    }

    public void setObjectiveList(ItemProcessorReport r, Item mappedItem, ItemMapper mapper) {
        r.setObjectives(mapper.getAncestorObjectiveList(mappedItem.getObjectiveId(),mappedItem));
    }

    public void updateItemProcessorReport(Item item, ItemProcessorReport r) {
        // obtain the answer key
        if (item.isCR()) {
            r.setAnswerKey(item.getMinPoints() + " : " + item.getMaxPoints());
        } else {
            r.setAnswerKey(item.getCorrectAnswer());
        }

        if ((this.writer instanceof ItemWriterOASDatabase)
            || (this.writer instanceof ItemWriterOASDatabaseInvisibleNoMedia))
            r.setActivationStatus(OASConstants.ITEM_STATUS_ACTIVE);
    }

}
