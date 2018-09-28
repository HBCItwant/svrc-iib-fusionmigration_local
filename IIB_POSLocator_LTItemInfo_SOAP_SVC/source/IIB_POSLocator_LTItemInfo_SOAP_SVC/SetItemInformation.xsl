<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"   xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://xmlns.saksinc.com/Locator/POSLocateItemInfo" xmlns:ns11="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveInfoBySSN" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.xmlns.saksinc.com/Locator/POSLocateItemInfo/Types" xmlns:ns3="http://xmlns.saksinc.com/Locator/POSLocatorItemInfo/ItemInformation" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ns2="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1  ns0 ns3 wsdl plnk xsd ns2 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
      <ns1:ItemInfoResponse>
         <ns1:Header>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:Chain">
               <ns0:Chain>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:Chain"/>
               </ns0:Chain>
            </xsl:if>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:StoreNumber">
               <ns0:StoreNumber>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:StoreNumber"/>
               </ns0:StoreNumber>
            </xsl:if>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:OperatorNumber">
               <ns0:OperatorNumber>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:OperatorNumber"/>
               </ns0:OperatorNumber>
            </xsl:if>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:TerminalNumber">
               <ns0:TerminalNumber>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:TerminalNumber"/>
               </ns0:TerminalNumber>
            </xsl:if>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:POSTransactionNumber">
               <ns0:POSTransactionNumber>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:POSTransactionNumber"/>
               </ns0:POSTransactionNumber>
            </xsl:if>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:POSSubTransNumber">
               <ns0:POSSubTransNumber>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:POSSubTransNumber"/>
               </ns0:POSSubTransNumber>
            </xsl:if>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:LanguageIndicator">
               <ns0:LanguageIndicator>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:LanguageIndicator"/>
               </ns0:LanguageIndicator>
            </xsl:if>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:MessageType">
               <ns0:MessageType>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:MessageType"/>
               </ns0:MessageType>
            </xsl:if>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:VersionInfo">
               <ns0:VersionInfo>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:VersionInfo"/>
               </ns0:VersionInfo>
            </xsl:if>
            <xsl:if test="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:MsgLength">
               <ns0:MsgLength>
                  <xsl:value-of select="/Output/ns1:ItemInfoRequest/ns1:Header/ns0:MsgLength"/>
               </ns0:MsgLength>
            </xsl:if>
         </ns1:Header>
         <ns1:ItemInfoList>
            <ns0:SKN>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/SKN"/>
            </ns0:SKN>
            <ns0:UPC>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/UPC"/>
            </ns0:UPC>
            <ns0:SSN>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/SVS"/>
            </ns0:SSN>
            <ns0:Department>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/DeptNo"/>
            </ns0:Department>
            <ns0:Class>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/ClassNo"/>
            </ns0:Class>
            <ns0:MFGNumber>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/MfgNo"/>
            </ns0:MFGNumber>
            <ns0:VendorStyle>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/VendorStyle"/>
            </ns0:VendorStyle>
            <ns0:Season>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/SizeCode"/>
            </ns0:Season>
            <ns0:Description>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/ItemDescLong"/>
            </ns0:Description>
            <ns0:LabelName>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/MfgName"/>
            </ns0:LabelName>
            <ns0:CurrentRetailPrice>
               <xsl:value-of select="format-number(Output/GetItemInfo_Output/RetrieveByIDandChainResponse/CurTicketPriceDollars,&quot;###0.00&quot;)"/>
            </ns0:CurrentRetailPrice>
            <ns0:SellRetailPrice>
               <xsl:value-of select="format-number(Output/GetItemInfo_Output/RetrieveByIDandChainResponse/CurTicketPriceDollars,&quot;###0.00&quot;)"/>
            </ns0:SellRetailPrice>
            <ns0:OriginalOwnRetailDollar>
               <xsl:value-of select="Output/GetItemInfo_Output/RetrieveByIDandChainResponse/OrigOwnRtlDol"/>
            </ns0:OriginalOwnRetailDollar>
            <xsl:for-each select="Output/GetStyleInfo_Output/ns11:RetrieveInfoBySSNResponse/ns11:RetrieveInfoBySSNOutput">
               <xsl:sort select="ns2:ColorDesc" order="ascending"/>
               <xsl:sort select="ns2:SizeDesc" order="ascending"/>
               <ns0:ItemInfoStyles>
                  <ns0:SKN>
                     <xsl:value-of select="ns2:SKN"/>
                  </ns0:SKN>
                  <ns0:UPC>
                     <xsl:value-of select="ns2:UPC"/>
                  </ns0:UPC>
                  <ns0:ColorDescription>
                     <xsl:value-of select="ns2:ColorDesc"/>
                  </ns0:ColorDescription>
                  <ns0:Size>
                     <xsl:value-of select="ns2:SizeDesc"/>
                  </ns0:Size>
                  <ns0:SellretailPrice>
                     <xsl:value-of select="format-number(ns2:CurTicketPriceDollars,&quot;###0.00&quot;)"/>
                  </ns0:SellretailPrice>
               </ns0:ItemInfoStyles>
            </xsl:for-each>
         </ns1:ItemInfoList>
      </ns1:ItemInfoResponse>
   </xsl:template>
</xsl:stylesheet>