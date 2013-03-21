package com.ctb.contentBridge.core.publish.hibernate.persist;

import java.io.Serializable;

    public class OrgNodeTestCatalogCompositeId implements Serializable {
        private Long itemSetId;
        private Long orgNodeId;
        private Long testCatalogId;

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
     * column="ORG_NODE_ID"
     * not-null="true"
     */
    public Long getOrgNodeId() {
        return orgNodeId;
    }

    /**
     * @hibernate.property
     * column="TEST_CATALOG_ID"
     * not-null="true"
     */
    public Long getTestCatalogId() {
        return testCatalogId;
    }

    public void setItemSetId(Long itemSetId) {
        this.itemSetId = itemSetId;
    }

    public void setOrgNodeId(Long orgNodeId) {
        this.orgNodeId = orgNodeId;
    }

    public void setTestCatalogId(Long testCatalogId) {
        this.testCatalogId = testCatalogId;
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
        return "" + testCatalogId.toString() + "|" + orgNodeId.toString() + "|" + itemSetId.toString();
    }
}
