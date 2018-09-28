<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://xmlns.saksinc.com/Locator/POSLocateItemInfo" xmlns:uid="http://xmlns.saksinc.com/CommonModules/UniversalItemID" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.xmlns.saksinc.com/Locator/POSLocateItemInfo/Types" xmlns:client="http://xmlns.saksinc.com/Locator/POSLocatorItemInfo/ItemInformation" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Locator/POSLocatorItemInfo/GetItemInfoByDeptClassMfgVendorStyle" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetItemInfoByDeptClassMfgVendorStyle" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 uid ns0 client plt wsdl tns plnk top xsd ns2 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">


 <xsl:key name="svsRfItem" match="top:RfItem" use="SVS" />

   <xsl:template match="/">
      <ns1:ItemInfoResponse>
         <ns1:Header>
            <ns0:Chain>
               <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:Chain"/>
            </ns0:Chain>
            <xsl:if test="Output/ns1:ItemInfoRequest/ns1:Header/ns0:StoreNumber">
               <ns0:StoreNumber>
                  <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:StoreNumber"/>
               </ns0:StoreNumber>
            </xsl:if>
            <xsl:if test="Output/ns1:ItemInfoRequest/ns1:Header/ns0:OperatorNumber">
               <ns0:OperatorNumber>
                  <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:OperatorNumber"/>
               </ns0:OperatorNumber>
            </xsl:if>
            <xsl:if test="Output/ns1:ItemInfoRequest/ns1:Header/ns0:TerminalNumber">
               <ns0:TerminalNumber>
                  <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:TerminalNumber"/>
               </ns0:TerminalNumber>
            </xsl:if>
            <xsl:if test="Output/ns1:ItemInfoRequest/ns1:Header/ns0:POSTransactionNumber">
               <ns0:POSTransactionNumber>
                  <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:POSTransactionNumber"/>
               </ns0:POSTransactionNumber>
            </xsl:if>
            <xsl:if test="Output/ns1:ItemInfoRequest/ns1:Header/ns0:POSSubTransNumber">
               <ns0:POSSubTransNumber>
                  <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:POSSubTransNumber"/>
               </ns0:POSSubTransNumber>
            </xsl:if>
            <xsl:if test="Output/ns1:ItemInfoRequest/ns1:Header/ns0:LanguageIndicator">
               <ns0:LanguageIndicator>
                  <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:LanguageIndicator"/>
               </ns0:LanguageIndicator>
            </xsl:if>
            <xsl:if test="Output/ns1:ItemInfoRequest/ns1:Header/ns0:MessageType">
               <ns0:MessageType>
                  <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:MessageType"/>
               </ns0:MessageType>
            </xsl:if>
            <xsl:if test="Output/ns1:ItemInfoRequest/ns1:Header/ns0:VersionInfo">
               <ns0:VersionInfo>
                  <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:VersionInfo"/>
               </ns0:VersionInfo>
            </xsl:if>
            <xsl:if test="Output/ns1:ItemInfoRequest/ns1:Header/ns0:MsgLength">
               <ns0:MsgLength>
                  <xsl:value-of select="Output/ns1:ItemInfoRequest/ns1:Header/ns0:MsgLength"/>
               </ns0:MsgLength>
            </xsl:if>
         </ns1:Header>
         <xsl:for-each select="Output/top:RfItemCollection/top:RfItem[generate-id() = generate-id(key('svsRfItem', SVS)[1])]">
    
            <ns1:ItemInfoList>
               <ns0:SKN>
                  <xsl:value-of select="SKN_NO"/>
               </ns0:SKN>
               <ns0:UPC>
                  <xsl:value-of select="UPC"/>
               </ns0:UPC>
               <ns0:SSN>
                  <xsl:value-of select="SVS"/>
               </ns0:SSN>
               <ns0:Department>
                  <xsl:value-of select="DEPT_NO"/>
               </ns0:Department>
               <ns0:Class>
                  <xsl:value-of select="CLASS_NO"/>
               </ns0:Class>
               <ns0:MFGNumber>
                  <xsl:value-of select="MFG_NO"/>
               </ns0:MFGNumber>
               <ns0:VendorStyle>
                  <xsl:value-of select="VENDOR_STYLE"/>
               </ns0:VendorStyle>
               <ns0:Season>
                  <xsl:value-of select="SEASON_TYPE_CODE"/>
               </ns0:Season>
               <ns0:Description>
                  <xsl:value-of select="ITEM_DESC_LONG"/>
               </ns0:Description>
               <ns0:LabelName>
                  <xsl:value-of select="MFG_NAME"/>
               </ns0:LabelName>
               <ns0:CurrentRetailPrice>
                  <xsl:value-of select="format-number(CUR_TKT_PRICE_DOL,&quot;###0.00&quot;)"/>
               </ns0:CurrentRetailPrice>
               <ns0:SellRetailPrice>
                  <xsl:value-of select="format-number(CUR_TKT_PRICE_DOL,&quot;###0.00&quot;)"/>
               </ns0:SellRetailPrice>
            </ns1:ItemInfoList>
         </xsl:for-each>
      </ns1:ItemInfoResponse>
   </xsl:template>
</xsl:stylesheet>