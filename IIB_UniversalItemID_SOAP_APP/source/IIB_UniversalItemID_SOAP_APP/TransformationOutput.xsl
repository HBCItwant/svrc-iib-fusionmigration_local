<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/RetrieveItemInfoBySKN" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveByIDandChain" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/RetrieveInfoByIDandChain" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/CommonModules/UniversalItemID/RetrieveInfoByIDandChain" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/CommonModules/UniversalItemID/RetrieveItemInfoBySKN" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:client="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveRFSItemID" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 db plt wsdl tns ns1 xsd ns2 plnk client ns3 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <!-- xsl:param name="RetrieveItemInfoBySKNOutput.RetrieveItemInfoBySKNOutputCollection"/> -->
   <xsl:template match="/">
      <ns2:RetrieveByIDandChainResponse>
         <ns3:SSN>
            <xsl:value-of select="normalize-space(/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SSN)"/>
         </ns3:SSN>
         <ns3:SKN>
            <xsl:value-of select="normalize-space(/Query/RetrieveInfoByIDandChainOutputCollection/RetrieveInfoByIDandChainOutput/SKN_NO)"/>
         </ns3:SKN>
         <ns3:UPC>
            <xsl:value-of select="normalize-space(/Query/RetrieveInfoByIDandChainOutputCollection/RetrieveInfoByIDandChainOutput/UPC)"/>
         </ns3:UPC>
         <ns3:SVS>
            <xsl:value-of select="normalize-space(/Query/RetrieveInfoByIDandChainOutputCollection/RetrieveInfoByIDandChainOutput/SVS)"/>
         </ns3:SVS>
         <ns3:FashionStyleNo/>
         <ns3:VendorNum/>
         <ns3:VendorStyle/>
         <ns3:DMMName/>
         <ns3:DMMNo/>
         <ns3:GMMName/>
         <ns3:GMMNo/>
         <ns3:DeptNo/>
         <ns3:DeptDesc/>
         <ns3:ClassNo/>
         <ns3:ClassDesc/>
         <ns3:MfgName/>
         <ns3:MfgNo/>
         <ns3:ItemDescShort/>
         <ns3:ItemDescLong/>
         <ns3:PriceStatus/>
         <ns3:PriceTypeCode/>
         <ns3:ReqReasonCode/>
         <ns3:SeasonCde/>
         <ns3:SizeCode/>
         <ns3:SizeDesc/>
         <ns3:ColorCode/>
         <ns3:ColorDesc/>
         <ns3:ConsignmentCode/>
         <ns3:CurTicketPriceDollars/>
         <ns3:OwnedOrigPctOff/>
         <ns3:CurOwnedRetailDollars/>
         <ns3:CostAmountDollars/>
         <ns3:CompareAtPrice/>
         <ns3:CatalogCode/>
         <ns3:OrigOwnRtlDol/>
         <ns3:OrigTktRtlDol/>
         <ns3:EffectiveDate/>
         <ns3:PermPrice>
            <ns3:Price/>
            <ns3:StartDate/>
            <ns3:StartTime/>
            <ns3:RegionTypeCode/>
            <ns3:PriceTypeCode/>
            <ns3:PriceStatus/>
            <ns3:ReqReasonNo/>
            <ns3:OwnedOrigPctOff/>
         </ns3:PermPrice>
         <ns3:PromoPrices>
            <ns3:PriceInfo>
               <ns3:PriceEffectiveDate/>
               <ns3:Price/>
               <ns3:TotalDisc/>
               <ns3:PromoID/>
               <ns3:PromoType/>
               <ns3:PromoAmount/>
               <ns3:PromoStartDate/>
               <ns3:PromoEndDate/>
               <ns3:PromoStartTime/>
               <ns3:PromoEndTime/>
               <ns3:DiscAmt/>
               <ns3:RcptTxt/>
               <ns3:OriginalPrice/>
               <ns3:PromoChangeType/>
               <ns3:Status/>
            </ns3:PriceInfo>
         </ns3:PromoPrices>
      </ns2:RetrieveByIDandChainResponse>
   </xsl:template>
</xsl:stylesheet>