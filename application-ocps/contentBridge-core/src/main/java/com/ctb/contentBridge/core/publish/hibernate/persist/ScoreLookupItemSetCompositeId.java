package com.ctb.contentBridge.core.publish.hibernate.persist;

import java.io.Serializable;

/**
 * Created by IntelliJ IDEA.
 * User: mwshort
 * Date: Aug 24, 2004
 * Time: 3:18:02 PM
 * To change this template use File | Settings | File Templates.
 */
public class ScoreLookupItemSetCompositeId implements Serializable {
        private Long itemSetId;
        private String scoreLookupId;

    /**
     * @hibernate.property
     * column="ITEM_SET_ID"
     * not-null="true"
     */
    public Long getItemSetId() {
        return itemSetId;
    }

    /**
     * @hibernate.property
     * column="SCORE_LOOKUP_ID"
     * not-null="true"
     */
    public String getScoreLookupId() {
        return scoreLookupId;
    }

    public void setItemSetId(Long itemSetId) {
        this.itemSetId = itemSetId;
    }

    public void setScoreLookupId(String scoreLookupId) {
        this.scoreLookupId = scoreLookupId;
    }

    public int hashCode() {
        // TODO: Generated by HibernateGen.rb
        return toString().hashCode();
    }

    public boolean equals(Object object) {
        // TODO: Generated by HibernateGen.rb
        return toString().equals(object.toString());
    }

    public String toString() {
        // TODO: Generated by HibernateGen.rb
        return "" + scoreLookupId.toString() + "|" + itemSetId.toString();
    }

}
