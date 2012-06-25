package com.ctb.util;


import java.util.*;

import org.jdom.*;
import org.jdom.xpath.*;

import com.ctb.common.tools.*;


/**
 * Created by IntelliJ IDEA.
 * User: mwshort
 * Date: Sep 23, 2003
 * Time: 3:46:39 PM
 * This class uses JDOMElementComparators to create a list of element partitions from an ancestor element.
 * the partitionComparator uses an ordered list of XPath Expressions evaluating to attribute queries.
 * This is used as criteria for grouping and ordering elements from the ancestor element into a Sorted Multiset
 * The uniquenessComparator specifies Xpath expressions using the child elements as current context for determining
 * attributes that should evaluate as the uniqueness constraint when converting the multiset to a standard set (TreeSet)
 */
public class JDOMElementPartitioner {

    private JDOMElementComparator partitionComparator = null;
    private JDOMElementComparator uniquenessComparator = null;
    private List duplicatesList = new ArrayList();
    private boolean applyUniquenessConstraintFirst = false;
    private JDOMNodeFilter filter = new ElementNodeFilter();

    /**
     *
     * @param uniquenessComparator Used when converting the multiset generated by the partitionComparator to partitions
     * @param partitionComparator Used to create a SortedMultiSet based on the Element type specified in its
     */
    public JDOMElementPartitioner(JDOMElementComparator uniquenessComparator, JDOMElementComparator partitionComparator) {
        this.partitionComparator = partitionComparator;
        this.uniquenessComparator = uniquenessComparator;
    }

    /**
     *
     * @param uniquenessAttribute
     * @param partitionComparator Used to create a SortedMultiSet based on the Element type specified in its
     */
    public JDOMElementPartitioner(String uniquenessAttribute, JDOMElementComparator partitionComparator) {
        String uniquenessExp = ".//@" + uniquenessAttribute;
        String[] expressions = {uniquenessExp};

        this.uniquenessComparator = new JDOMElementComparator(expressions);
        this.partitionComparator = partitionComparator;
    }

    public void applyUniquenessConstraintFirst(boolean yesno) {
        this.applyUniquenessConstraintFirst = yesno;
    }

    public void setNodeFilter(JDOMNodeFilter filter) {
        this.filter = filter;
    }

    /**
     * Gets a partitioned set of all Elements returned by the XPath query against the ancestor element
     * @param ancestorElement Parent Element
     * @param elementListQuery for selecting the descendant elements to partition
     * @return List of ordered partitions (TreeSets), representing multi-valued elements from the Multiset, each
     * partition ordered by the uniqueness comparator
     */
    public List getPartitionedSets(Element ancestorElement, XPath elementListQuery) {
        try {
            return getPartitionedSets(elementListQuery.selectNodes(ancestorElement));
        } catch (JDOMException e) {
            throw new SystemException(e.getMessage(), e);
        }
    }

    /**
     * Gets a partitioned set of all descendants from the Element whose Name matches the childElementName
     * @param ancestorElement Parent Element
     * @param childElementName for selecting the descendant elements to partition
     * @return List of ordered partitions (TreeSets), representing multi-valued elements from the Multiset, each
     * partition ordered by the uniqueness comparator
     */
    public List getPartitionedSets(Element ancestorElement, String childElementName) {
        try {
            List nodes = XPath.newInstance(".//" + childElementName).selectNodes(ancestorElement);

            return getPartitionedSets(nodes);
        } catch (JDOMException e) {
            throw new SystemException(e.getMessage(), e);
        }
    }

    /**
     * Gets a partitioned set of elements from the list of elements passed in
     * @param elementList Elements to partition
     * @return List of ordered partitions (TreeSets), representing multi-valued elements from the Multiset, each
     * partition ordered by the uniqueness comparator
     */
    public List getPartitionedSets(Collection elementList) {
        elementList = filter.filterNodes(elementList);
        List list = new ArrayList();

        duplicatesList.clear();
        if (applyUniquenessConstraintFirst) {
            elementList = applyUniqueness(elementList);
        }
        SortedMultiSet multiSet = new SortedMultiSet(partitionComparator);

        multiSet.addAll(elementList);
        createPartitions(multiSet, list);
        return list;
    }

    private Collection applyUniqueness(Collection elementList) {
        TreeSet set = new TreeSet(uniquenessComparator);

        addCollectionToSetAndCreateDuplicatesReport(elementList, set);
        return set;
    }

    /**
     * This method extracts all of the 'elements' (each element could be repeated as per multisets) in the multiset
     * into 'element' subsets from the multiset. For each of those subsets, it generates an ordered partition (TreeSet),
     * based on the natural ordering of the uniqueness comparator
     * @param multiSet SortedMultiSet of JDOM Elements
     * @param list to which to add partitions
     */
    private void createPartitions(SortedMultiSet multiSet, List list) {
        if (multiSet.isEmpty()) {
            return;
        }

        for (Iterator iter = multiSet.subsetIterator(); iter.hasNext();) {
            list.add(getSetFromMultiSet((SortedMultiSet) iter.next()));
        }
    }

    /**
     * Merges duplicate Items from a multiset into a single item. Uses the uniquenessComparator to determine
     * if an Item is a duplicate
     * @param sms A SortedMultiSet
     * @return A TreeSet created using the UniquenessComparator
     */
    private Set getSetFromMultiSet(SortedSet sms) {
        if (applyUniquenessConstraintFirst) {
            return sms;
        }
        TreeSet set = new TreeSet(uniquenessComparator);

        addCollectionToSetAndCreateDuplicatesReport(sms, set);
        return set;
    }

    private void addCollectionToSetAndCreateDuplicatesReport(Collection collection, SortedSet set) {
        for (Iterator iter = collection.iterator(); iter.hasNext();) {
            Object obj = iter.next();

            if (!set.add(obj)) {
                addToDuplicates(obj, set.tailSet(obj).first());
            }
        }
    }

    public List getDuplicates() {
        return duplicatesList;
    }

    private void addToDuplicates(Object newObj, Object objectInSet) {
        if (!duplicatesList.contains(objectInSet)) {
            duplicatesList.add(objectInSet);
        }
        duplicatesList.add(newObj);
    }

    /**
     *
     * @return JDOMElementComparator used for converting the Multiset into a standard set
     */
    public JDOMElementComparator getUniquenessComparator() {
        return uniquenessComparator;
    }
}