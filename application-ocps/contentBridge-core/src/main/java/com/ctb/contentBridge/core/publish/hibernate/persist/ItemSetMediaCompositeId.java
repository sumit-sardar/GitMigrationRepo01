package com.ctb.contentBridge.core.publish.hibernate.persist;

import java.io.Serializable;

    public class ItemSetMediaCompositeId implements Serializable {
        private Long itemSetId;
        private String mediaType;

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
     * column="MEDIA_TYPE"
     * not-null="true"
     */
    public String getMediaType() {
        return mediaType;
    }

    public void setItemSetId(Long itemSetId) {
        this.itemSetId = itemSetId;
    }

    public void setMediaType(String mediaType) {
        this.mediaType = mediaType;
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
        return "" + mediaType.toString() + "|" + itemSetId.toString();
    }
}
