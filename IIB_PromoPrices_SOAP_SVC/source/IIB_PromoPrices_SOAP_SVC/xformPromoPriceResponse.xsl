<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
 xmlns:ns0="http://www.xmln.saksinc.com/CommonModules/PromoPrices" 
 xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:ns2="http://xmlns.saksinc.com/CommonModules/PromoPrices" 
  xmlns:client="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveByIDandChain" 
   xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" 
  xmlns:ns4="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" 
   exclude-result-prefixes="xsl plnk client xsd wsdl ns0 ns4  ns2">
   <xsl:template match="/">
      <ns0:PromoPriceResponse>
         <ns0:ClassNumber>
         	  <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:ClassNo"/>
        </ns0:ClassNumber>
         <ns0:ColorCode>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:ColorCode"/>
         </ns0:ColorCode>
         <ns0:ColorDesc>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:ColorDesc"/>
         </ns0:ColorDesc>
         <ns0:CostAmountDollars>
            <xsl:value-of select="format-number(/client:RetrieveByIDandChainResponse/ns4:CostAmountDollars,&quot;###0.00&quot;)"/>
         </ns0:CostAmountDollars>
         <ns0:CurOwnedRetailDollars>
            <xsl:value-of select="format-number(/client:RetrieveByIDandChainResponse/ns4:CurOwnedRetailDollars,&quot;###0.00&quot;)"/>
         </ns0:CurOwnedRetailDollars>
         <ns0:CurTicketPriceDollars>
            <xsl:value-of select="format-number(/client:RetrieveByIDandChainResponse/ns4:CurTicketPriceDollars,&quot;###0.00&quot;)"/>
         </ns0:CurTicketPriceDollars>
         <ns0:CompareAtPrice>
            <xsl:value-of select="format-number(/client:RetrieveByIDandChainResponse/ns4:CompareAtPrice,&quot;###0.00&quot;)"/>
         </ns0:CompareAtPrice>
         <ns0:Department>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:DeptNo"/>
         </ns0:Department>
         <ns0:FashionStyleNo>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:FashionStyleNo"/>
         </ns0:FashionStyleNo>
         <ns0:ItemDescLong>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:ItemDescLong"/>
         </ns0:ItemDescLong>
         <ns0:ItemDescShort>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:ItemDescShort"/>
         </ns0:ItemDescShort>
         <ns0:ManufacturerNumber>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:MfgNo"/>
         </ns0:ManufacturerNumber>
         <ns0:SKN>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:SKN"/>
         </ns0:SKN>
         <ns0:SSN>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:SSN"/>
         </ns0:SSN>
         <ns0:SVS>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:SVS"/>
         </ns0:SVS>
         <ns0:SizeCode>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:SizeCode"/>
         </ns0:SizeCode>
         <ns0:SizeDesc>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:SizeDesc"/>
         </ns0:SizeDesc>
         <ns0:Status>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:PriceStatus"/>
         </ns0:Status>
         <ns0:UPC>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:UPC"/>
         </ns0:UPC>
         <ns0:VendorStyle>
            <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:VendorStyle"/>
         </ns0:VendorStyle>
         <xsl:for-each select="/client:RetrieveByIDandChainResponse/ns4:PermPrice">
            <ns0:PermPrice>
               <ns0:Price>
                  <xsl:value-of select="format-number(ns4:Price,&quot;###0.00&quot;)"/>
               </ns0:Price>
               <ns0:StartDate>
                  <xsl:value-of select="ns4:StartDate"/>
               </ns0:StartDate>
               <ns0:StartTime>
                  <xsl:value-of select="ns4:StartTime"/>
               </ns0:StartTime>
               <ns0:Status>
                  <xsl:value-of select="ns4:PriceStatus"/>
               </ns0:Status>
            </ns0:PermPrice>
         </xsl:for-each>
         <xsl:choose>
            <xsl:when test="string-length(/client:RetrieveByIDandChainResponse/ns0:PromoPrice/ns0:StartDate) > 0.0">
               <xsl:for-each select="/client:RetrieveByIDandChainResponse/ns4:PromoPrice">
                  <ns0:PromoPrice>
                     <ns0:StartDate>
                        <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:PromoPrice/ns4:StartDate"/>
                     </ns0:StartDate>
                     <ns0:StartTime>
                        <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:PromoPrice/ns4:StartTime"/>
                     </ns0:StartTime>
                     <ns0:OriginalPrice>
                        <xsl:value-of select="format-number(/client:RetrieveByIDandChainResponse/ns4:PromoPrice/ns4:OriginalPrice,&quot;###0.00&quot;)"/>
                     </ns0:OriginalPrice>
                     <ns0:Price>
                        <xsl:value-of select="format-number(/client:RetrieveByIDandChainResponse/ns4:PromoPrice/ns4:Price,&quot;###0.00&quot;)"/>
                     </ns0:Price>
                     <ns0:PromoChangeType>
                        <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:PromoPrice/ns4:PromoChangeType"/>
                     </ns0:PromoChangeType>
                     <ns0:EndDate>
                        <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:PromoPrice/ns4:EndDate"/>
                     </ns0:EndDate>
                     <ns0:EndTime>
                        <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:PromoPrice/ns4:EndTime"/>
                     </ns0:EndTime>
                     <ns0:Status>
                        <xsl:value-of select="/client:RetrieveByIDandChainResponse/ns4:PromoPrice/ns4:Status"/>
                     </ns0:Status>
                  </ns0:PromoPrice>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:for-each select="/client:RetrieveByIDandChainResponse/ns0:PromoPrices/ns4:PriceInfo">
                  <ns0:PromoPrice>
                     <ns0:StartDate>
                        <xsl:value-of select="ns4:PromoStartDate"/>
                     </ns0:StartDate>
                     <ns0:StartTime>
                        <xsl:value-of select="ns4:PromoStartTime"/>
                     </ns0:StartTime>
                     <ns0:OriginalPrice>
                        <xsl:value-of select="format-number(ns4:OriginalPrice,&quot;###0.00&quot;)"/>
                     </ns0:OriginalPrice>
                     <ns0:Price>
                        <xsl:value-of select="format-number(ns4:Price,&quot;###0.00&quot;)"/>
                     </ns0:Price>
                     <ns0:PromoChangeType>
                        <xsl:value-of select="ns4:PromoChangeType"/>
                     </ns0:PromoChangeType>
                     <ns0:EndDate>
                        <xsl:value-of select="ns4:PromoEndDate"/>
                     </ns0:EndDate>
                     <ns0:EndTime>
                        <xsl:value-of select="ns4:PromoEndTime"/>
                     </ns0:EndTime>
                     <ns0:Status>
                        <xsl:value-of select="ns4:Status"/>
                     </ns0:Status>
                  </ns0:PromoPrice>
               </xsl:for-each>
            </xsl:otherwise>
         </xsl:choose>
      </ns0:PromoPriceResponse>
   </xsl:template>
</xsl:stylesheet>