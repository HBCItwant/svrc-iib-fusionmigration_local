<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" 
xmlns:ns0="http://xmlns.hbc.com/CommonModules/CMSStockLookupService/Types" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/CMSStockLookupService" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://cms.hbc.com/" exclude-result-prefixes="xsi xsl ns0 msg_in_out plt xsd bpws bpel">
   <xsl:template match="/">
      <msg_in_out:CMSStockResponse>
         <ns0:CMSStockDataList>
            <ns0:severity/>
            <ns0:code>
               <xsl:value-of select="normalize-space(/ns2:getStockSKUChainInqResponse/ns2:getStockSKUChainInqResult/RESULT/RETURN/CODE)"/>
            </ns0:code>
            <ns0:message>
               <xsl:value-of select="normalize-space(/ns2:getStockSKUChainInqResponse/ns2:getStockSKUChainInqResult/RESULT/RETURN/MESSAGE)"/>
            </ns0:message>
            <xsl:for-each select="/ns2:getStockSKUChainInqResponse/ns2:getStockSKUChainInqResult/RESULT/DATA/ONHAND/STORE_ONHAND">
               <ns0:CMSStock>
                  <ns0:SKN>
                     <xsl:value-of select="normalize-space(SKU)"/>
                  </ns0:SKN>
                  <ns0:store>
                     <xsl:value-of select="normalize-space(STORE)"/>
                  </ns0:store>
                  <ns0:storeName>
                     <xsl:value-of select="normalize-space(STORE_NAME)"/>
                  </ns0:storeName>
                  <ns0:availOnHandQty>
                     <xsl:value-of select="normalize-space(AVAIL_ON_HAND_QTY)"/>
                  </ns0:availOnHandQty>
                  <ns0:totOnHandQty>
                     <xsl:value-of select="normalize-space(TOT_ON_HAND_QTY)"/>
                  </ns0:totOnHandQty>
                  <ns0:inTransitQty>
                     <xsl:value-of select="normalize-space(IN_TRANSIT_QTY)"/>
                  </ns0:inTransitQty>
                  <ns0:onOrdQty>
                     <xsl:value-of select="normalize-space(ON_ORDER_QTY)"/>
                  </ns0:onOrdQty>
               </ns0:CMSStock>
            </xsl:for-each>
         </ns0:CMSStockDataList>
      </msg_in_out:CMSStockResponse>
   </xsl:template>
</xsl:stylesheet>