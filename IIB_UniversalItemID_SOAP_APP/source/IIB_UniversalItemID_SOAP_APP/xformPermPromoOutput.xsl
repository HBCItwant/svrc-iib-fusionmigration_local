<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns1="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns3="http://tempuri.org/Imports" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:client="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveByIDandChain" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://tempuri.org/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:ns2="http://schemas.datacontract.org/2004/07/Saks.StoreSystems.Domain.PriceInquiry" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl wsa ns1 ns3 wsa10 client soap12 soapenc soap tns wsdl wsx wsap wsaw ns2 plnk wsp msc wsu xsd ns0 wsam xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  
   <xsl:template match="/">
      <client:RetrieveByIDandChainResponse>
         <ns0:SSN>
            <xsl:value-of select="/RetrieveByIDandChainResponse/SSN"/>
         </ns0:SSN>
         <ns0:SKN>
            <xsl:value-of select="/RetrieveByIDandChainResponse/SKN"/>
         </ns0:SKN>
         <ns0:UPC>
            <xsl:value-of select="/RetrieveByIDandChainResponse/UPC"/>
         </ns0:UPC>
         <ns0:SVS>
            <xsl:value-of select="/RetrieveByIDandChainResponse/SVS"/>
         </ns0:SVS>
         <ns0:FashionStyleNo>
            <xsl:value-of select="/RetrieveByIDandChainResponse/FashionStyleNo"/>
         </ns0:FashionStyleNo>
         <ns0:VendorNum>
            <xsl:value-of select="/RetrieveByIDandChainResponse/VendorNum"/>
         </ns0:VendorNum>
         <ns0:MdseVendorNum>
            <xsl:value-of select="/RetrieveByIDandChainResponse/MdseVendorNum"/>
         </ns0:MdseVendorNum>
         <ns0:VendorStyle>
            <xsl:value-of select="/RetrieveByIDandChainResponse/VendorStyle"/>
         </ns0:VendorStyle>
         <ns0:DMMName>
            <xsl:value-of select="/RetrieveByIDandChainResponse/DMMName"/>
         </ns0:DMMName>
         <ns0:DMMNo>
            <xsl:value-of select="/RetrieveByIDandChainResponse/DMMNo"/>
         </ns0:DMMNo>
         <ns0:GMMName>
            <xsl:value-of select="/RetrieveByIDandChainResponse/GMMName"/>
         </ns0:GMMName>
         <ns0:GMMNo>
            <xsl:value-of select="/RetrieveByIDandChainResponse/GMMNo"/>
         </ns0:GMMNo>
         <ns0:DeptNo>
            <xsl:value-of select="/RetrieveByIDandChainResponse/DeptNo"/>
         </ns0:DeptNo>
         <ns0:DeptDesc>
            <xsl:value-of select="/RetrieveByIDandChainResponse/DeptDesc"/>
         </ns0:DeptDesc>
         <ns0:ClassNo>
            <xsl:value-of select="/RetrieveByIDandChainResponse/ClassNo"/>
         </ns0:ClassNo>
         <ns0:ClassDesc>
            <xsl:value-of select="/RetrieveByIDandChainResponse/ClassDesc"/>
         </ns0:ClassDesc>
         <ns0:MfgName>
            <xsl:value-of select="/RetrieveByIDandChainResponse/MfgName"/>
         </ns0:MfgName>
         <ns0:MfgNo>
            <xsl:value-of select="/RetrieveByIDandChainResponse/MfgNo"/>
         </ns0:MfgNo>
         <ns0:ItemDescShort>
            <xsl:value-of select="/RetrieveByIDandChainResponse/ItemDescShort"/>
         </ns0:ItemDescShort>
         <ns0:ItemDescLong>
            <xsl:value-of select="/RetrieveByIDandChainResponse/ItemDescLong"/>
         </ns0:ItemDescLong>
         <ns0:PriceStatus>
            <xsl:value-of select="/RetrieveByIDandChainResponse/PriceStatus"/>
         </ns0:PriceStatus>
         <ns0:PriceTypeCode>
            <xsl:value-of select="/RetrieveByIDandChainResponse/PriceTypeCode"/>
         </ns0:PriceTypeCode>
         <ns0:ReqReasonCode>
            <xsl:value-of select="/RetrieveByIDandChainResponse/ReqReasonCode"/>
         </ns0:ReqReasonCode>
         <ns0:SeasonCde>
            <xsl:value-of select="/RetrieveByIDandChainResponse/SeasonCde"/>
         </ns0:SeasonCde>
         <ns0:SizeCode>
            <xsl:value-of select="/RetrieveByIDandChainResponse/SizeCode"/>
         </ns0:SizeCode>
         <ns0:SizeDesc>
            <xsl:value-of select="/RetrieveByIDandChainResponse/SizeDesc"/>
         </ns0:SizeDesc>
         <ns0:ColorCode>
            <xsl:value-of select="/RetrieveByIDandChainResponse/ColorCode"/>
         </ns0:ColorCode>
         <ns0:ColorDesc>
            <xsl:value-of select="/RetrieveByIDandChainResponse/ColorDesc"/>
         </ns0:ColorDesc>
         <ns0:ConsignmentCode>
            <xsl:value-of select="/RetrieveByIDandChainResponse/ConsignmentCode"/>
         </ns0:ConsignmentCode>
         <ns0:CurTicketPriceDollars>
            <xsl:value-of select="format-number(/RetrieveByIDandChainResponse/CurTicketPriceDollars,&quot;###0.00&quot;)"/>
         </ns0:CurTicketPriceDollars>
         <ns0:OwnedOrigPctOff>
            <xsl:value-of select="/RetrieveByIDandChainResponse/OwnedOrigPctOff"/>
         </ns0:OwnedOrigPctOff>
         <ns0:CurOwnedRetailDollars>
            <xsl:value-of select="format-number(/RetrieveByIDandChainResponse/CurOwnedRetailDollars,&quot;###0.00&quot;)"/>
         </ns0:CurOwnedRetailDollars>
         <ns0:CostAmountDollars>
            <xsl:value-of select="format-number(/RetrieveByIDandChainResponse/CostAmountDollars,&quot;###0.00&quot;)"/>
         </ns0:CostAmountDollars>
         <ns0:CompareAtPrice>
            <xsl:value-of select="/RetrieveByIDandChainResponse/CompareAtPrice"/>
         </ns0:CompareAtPrice>
         <ns0:CatalogCode>
            <xsl:value-of select="/RetrieveByIDandChainResponse/CatalogCode"/>
         </ns0:CatalogCode>
         <ns0:OrigOwnRtlDol>
            <xsl:value-of select="/RetrieveByIDandChainResponse/OrigOwnRtlDol"/>
         </ns0:OrigOwnRtlDol>
         <ns0:OrigTktRtlDol>
            <xsl:value-of select="/RetrieveByIDandChainResponse/OrigTktRtlDol"/>
         </ns0:OrigTktRtlDol>
         <ns0:EffectiveDate>
            <xsl:value-of select="/RetrieveByIDandChainResponse/EffectiveDate"/>
         </ns0:EffectiveDate>
         <xsl:for-each select="/RetrieveByIDandChainResponse/PermPrice">
            <ns0:PermPrice>
               <ns0:Price>
                  <xsl:value-of select="format-number(Price,&quot;###0.00&quot;)"/>
               </ns0:Price>
               <ns0:StartDate>
                  <xsl:value-of select="StartDate"/>
               </ns0:StartDate>
               <ns0:StartTime>
                  <xsl:value-of select="StartTime"/>
               </ns0:StartTime>
               <ns0:RegionTypeCode>
                  <xsl:value-of select="RegionTypeCode"/>
               </ns0:RegionTypeCode>
               <ns0:PriceTypeCode>
                  <xsl:value-of select="PriceTypeCode"/>
               </ns0:PriceTypeCode>
               <ns0:PriceStatus>
                  <xsl:value-of select="PriceStatus"/>
               </ns0:PriceStatus>
               <ns0:ReqReasonNo>
                  <xsl:value-of select="ReqReasonNo"/>
               </ns0:ReqReasonNo>
               <ns0:OwnedOrigPctOff>
                  <xsl:value-of select="OwnedOrigPctOff"/>
               </ns0:OwnedOrigPctOff>
            </ns0:PermPrice>
         </xsl:for-each>
         <ns0:PromoPrices>
            <xsl:for-each select="/tns:GetItemsResponse/tns:GetItemsResult/ns2:PromoPrices/ns2:PromoPrice">
               <ns0:PriceInfo>
                  <ns0:Price>
                     <xsl:value-of select="ns2:Price"/>
                  </ns0:Price>
                  <ns0:PromoStartDate>
                     <xsl:value-of select="ns2:StartDate"/>
                  </ns0:PromoStartDate>
                  <ns0:PromoEndDate>
                     <xsl:value-of select="ns2:EndDate"/>
                  </ns0:PromoEndDate>
                  <ns0:PromoStartTime>
                     <xsl:value-of select="ns2:StartTime"/>
                  </ns0:PromoStartTime>
                  <ns0:PromoEndTime>
                     <xsl:value-of select="ns2:EndTime"/>
                  </ns0:PromoEndTime>
                  <ns0:OriginalPrice>
                     <xsl:value-of select="ns2:OriginalPrice"/>
                  </ns0:OriginalPrice>
                  <ns0:PromoChangeType>
                     <xsl:value-of select="ns2:PromoChangeType"/>
                  </ns0:PromoChangeType>
                  <ns0:Status>
                     <xsl:value-of select="ns2:PriceStatus"/>
                  </ns0:Status>
               </ns0:PriceInfo>
            </xsl:for-each>
         </ns0:PromoPrices>
      </client:RetrieveByIDandChainResponse>
   </xsl:template>
</xsl:stylesheet>