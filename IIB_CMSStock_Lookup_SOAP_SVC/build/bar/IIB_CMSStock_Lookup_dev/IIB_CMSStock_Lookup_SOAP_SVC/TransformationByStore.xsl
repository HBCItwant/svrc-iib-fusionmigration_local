<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" 
xmlns:ns0="http://xmlns.hbc.com/CommonModules/CMSStockLookupService/Types" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" 
xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/CMSStockLookupService" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" 
xmlns:ns2="http://cms.hbc.com/" exclude-result-prefixes="xsi xsl ns0 msg_in_out plt xsd wsdl bpws ns2">
   <xsl:param name="ByStoreOutput"/>
   <xsl:template match="/">
      <msg_in_out:CMSStockResponse>
         <ns0:CMSStockDataList>
            <ns0:code>
               <xsl:value-of select="normalize-space(/ns2:getStockSKUStoreInqResponse/ns2:getStockSKUStoreInqResult/RESULT/RETURN/CODE)"/>
            </ns0:code>
            <ns0:message>
               <xsl:value-of select="normalize-space(/ns2:getStockSKUStoreInqResponse/ns2:getStockSKUStoreInqResult/RESULT/RETURN/MESSAGE)"/>
            </ns0:message>
            <ns0:CMSStock>
               <ns0:SKN>
                  <xsl:value-of select="normalize-space(/ns2:getStockSKUStoreInqResponse/ns2:getStockSKUStoreInqResult/RESULT/DATA/SKU)"/>
               </ns0:SKN>
               <ns0:store>
                  <xsl:value-of select="normalize-space(/ns2:getStockSKUStoreInqResponse/ns2:getStockSKUStoreInqResult/RESULT/DATA/STORE)"/>
               </ns0:store>
               <ns0:availOnHandQty>
                  <xsl:value-of select="normalize-space(/ns2:getStockSKUStoreInqResponse/ns2:getStockSKUStoreInqResult/RESULT/DATA/AVAIL_ON_HAND_QTY)"/>
               </ns0:availOnHandQty>
               <ns0:totOnHandQty>
                  <xsl:value-of select="normalize-space(/ns2:getStockSKUStoreInqResponse/ns2:getStockSKUStoreInqResult/RESULT/DATA/TOT_ON_HAND_QTY)"/>
               </ns0:totOnHandQty>
               <ns0:inTransitQty>
                  <xsl:value-of select="normalize-space(/ns2:getStockSKUStoreInqResponse/ns2:getStockSKUStoreInqResult/RESULT/DATA/IN_TRANSIT_QTY)"/>
               </ns0:inTransitQty>
               <ns0:onOrdQty>
                  <xsl:value-of select="normalize-space(/ns2:getStockSKUStoreInqResponse/ns2:getStockSKUStoreInqResult/RESULT/DATA/ON_ORDER_QTY)"/>
               </ns0:onOrdQty>
            </ns0:CMSStock>
         </ns0:CMSStockDataList>
      </msg_in_out:CMSStockResponse>
   </xsl:template>
</xsl:stylesheet>