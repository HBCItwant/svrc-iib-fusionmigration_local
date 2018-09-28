<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:client="http://xmlns.saksinc.com/Stores/OMS/SaksOMSATPService" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/GetBroadcastingStoreDB" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://xmlns.oracle.com/UPCConversion/UniversalItemID/ProcessItmID" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:ns1="http://xmlns.saks.com/Stores/OMS/SaksOMSATPService/retrieveOMSATP" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/GetLocatorATP/GetLocatorATP/GetBroadcastingStoreDB" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl client plt soap wsdl db ns0 plnk ns1 tns xsd aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns1:SaksOMSATPRequest>
         <ns1:itemID>
            <xsl:value-of select="XSLT/payload/processResponse/SKU"/>
         </ns1:itemID>
         <xsl:choose>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 10.0">
               <ns1:chain>
                  <xsl:value-of select="string(8.0)"/>
               </ns1:chain>
            </xsl:when>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 30.0">
               <ns1:chain>
                  <xsl:value-of select="string(7.0)"/>
               </ns1:chain>
            </xsl:when>
            <xsl:otherwise>
               <ns1:chain>
                  <xsl:value-of select="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE"/>
               </ns1:chain>
            </xsl:otherwise>
         </xsl:choose>
         <ns1:CountryCode>
            <xsl:value-of select="XSLT/SaksOMSATPRequest/CountryCode"/>
         </ns1:CountryCode>
         <xsl:choose>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 10.0 and XSLT/SaksOMSATPRequest/CountryCode = 'CA'">
               <ns1:orgCode>
                  <xsl:value-of select="string(&quot;SaksUSA&quot;)"/>
               </ns1:orgCode>
            </xsl:when>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 30.0 and XSLT/SaksOMSATPRequest/CountryCode = 'CA'">
               <ns1:orgCode>
                  <xsl:value-of select="string(&quot;SaksUSA&quot;)"/>
               </ns1:orgCode>
            </xsl:when>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 10.0">
               <ns1:orgCode>
                  <xsl:value-of select="string(&quot;SAKS&quot;)"/>
               </ns1:orgCode>
            </xsl:when>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 30.0">
               <ns1:orgCode>
                  <xsl:value-of select="string(&quot;OFF5&quot;)"/>
               </ns1:orgCode>
            </xsl:when>
            <xsl:otherwise>
               <ns1:chain>
                  <xsl:value-of select="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE"/>
               </ns1:chain>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:choose>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 10.0 and XSLT/SaksOMSATPRequest/CountryCode = 'US'">
               <ns1:distGroup>
                  <xsl:value-of select="string(&quot;DG_STORES&quot;)"/>
               </ns1:distGroup>
            </xsl:when>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 10.0 and XSLT/SaksOMSATPRequest/CountryCode = 'CA'">
               <ns1:distGroup>
                  <xsl:value-of select="string(&quot;SaksCanadaFullLine&quot;)"/>
               </ns1:distGroup>
            </xsl:when>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 30.0 and XSLT/SaksOMSATPRequest/CountryCode = 'US'">
               <ns1:distGroup>
                  <xsl:value-of select="string(&quot;DG_STORES&quot;)"/>
               </ns1:distGroup>
            </xsl:when>
            <xsl:when test="XSLT/GetBroadcastingStoreDBOutputCollection/GetBroadcastingStoreDBOutput/GRP_CDE = 30.0 and XSLT/SaksOMSATPRequest/CountryCode = 'CA'">
               <ns1:distGroup>
                  <xsl:value-of select="string(&quot;SaksCanadaOff5th&quot;)"/>
               </ns1:distGroup>
            </xsl:when>
            <xsl:otherwise>
               <ns1:distGroup>
                  <xsl:value-of select="string(&quot;Web&quot;)"/>
               </ns1:distGroup>
            </xsl:otherwise>
         </xsl:choose>
         <ns1:storeList>
            <xsl:value-of select="substring-after(XSLT/SaksOMSATPRequest/storeList,&quot;,&quot;)"/>
         </ns1:storeList>
         <ns1:QTY>
            <xsl:value-of select="number(1.0)"/>
         </ns1:QTY>
      </ns1:SaksOMSATPRequest>
   </xsl:template>
</xsl:stylesheet>