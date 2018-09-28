<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://xmlns.saksinc.com/Locator/POSLocateItemInfo" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://www.xmlns.saksinc.com/Locator/POSLocateItemInfo/Types" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:client="http://xmlns.saksinc.com/Locator/POSLocatorItemInfo/ItemInformation" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 plnk ns2 client xsd wsdl xp20 bpws aia mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns1:ItemInfoRequest>
         <ns1:Header>
            <ns2:Chain>
               <xsl:text disable-output-escaping="no">21</xsl:text>
            </ns2:Chain>
            <xsl:choose>
               <xsl:when test="string-length(normalize-space(/ns1:ItemInfoRequest/ns1:Header/ns2:CountryCode)) != 0.0">
                  <ns2:CountryCode>
                     <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:CountryCode"/>
                  </ns2:CountryCode>
               </xsl:when>
               <xsl:otherwise>
                  <ns2:CountryCode>
                     <xsl:value-of select="string(&quot;US&quot;)"/>
                  </ns2:CountryCode>
               </xsl:otherwise>
            </xsl:choose>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:StoreNumber">
               <ns2:StoreNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:StoreNumber"/>
               </ns2:StoreNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:OperatorNumber">
               <ns2:OperatorNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:OperatorNumber"/>
               </ns2:OperatorNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:TerminalNumber">
               <ns2:TerminalNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:TerminalNumber"/>
               </ns2:TerminalNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:POSTransactionNumber">
               <ns2:POSTransactionNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:POSTransactionNumber"/>
               </ns2:POSTransactionNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:POSSubTransNumber">
               <ns2:POSSubTransNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:POSSubTransNumber"/>
               </ns2:POSSubTransNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:LanguageIndicator">
               <ns2:LanguageIndicator>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:LanguageIndicator"/>
               </ns2:LanguageIndicator>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:MessageType">
               <ns2:MessageType>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:MessageType"/>
               </ns2:MessageType>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:VersionInfo">
               <ns2:VersionInfo>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:VersionInfo"/>
               </ns2:VersionInfo>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:MsgLength">
               <ns2:MsgLength>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:MsgLength"/>
               </ns2:MsgLength>
            </xsl:if>
         </ns1:Header>
         <ns1:SearchCriteria>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:ItemNumber">
               <ns2:ItemNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:ItemNumber"/>
               </ns2:ItemNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:Department">
               <ns2:Department>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:Department"/>
               </ns2:Department>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:MFG">
               <ns2:MFG>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:MFG"/>
               </ns2:MFG>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:VendorStyle">
               <ns2:VendorStyle>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:VendorStyle"/>
               </ns2:VendorStyle>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:Class">
               <ns2:Class>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:Class"/>
               </ns2:Class>
            </xsl:if>
         </ns1:SearchCriteria>
         <ns1:PreSellInfo>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:PreSellInfo/ns2:EventNum">
               <ns2:EventNum>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:PreSellInfo/ns2:EventNum"/>
               </ns2:EventNum>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:PreSellInfo/ns2:DateRelease">
               <ns2:DateRelease>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:PreSellInfo/ns2:DateRelease"/>
               </ns2:DateRelease>
            </xsl:if>
         </ns1:PreSellInfo>
      </ns1:ItemInfoRequest>
   </xsl:template>
</xsl:stylesheet>