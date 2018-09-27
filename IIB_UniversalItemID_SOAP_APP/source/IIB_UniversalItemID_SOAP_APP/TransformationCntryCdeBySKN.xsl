<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:client="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveInfoBySKN" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk xsd wsdl ns0 client xp20 bpws aia mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <client:RetrieveInfoBySKNRequest>
         <ns0:SKN>
            <xsl:value-of select="/client:RetrieveInfoBySKNRequest/ns0:SKN"/>
         </ns0:SKN>
         <xsl:choose>
            <xsl:when test="(string-length(normalize-space(/client:RetrieveInfoBySKNRequest/ns0:CountryCode)) != 0)">
               <ns0:CountryCode>
                  <xsl:value-of select="/client:RetrieveInfoBySKNRequest/ns0:CountryCode"/>
               </ns0:CountryCode>
            </xsl:when>
            <xsl:otherwise>
               <ns0:CountryCode>
                  <xsl:value-of select="string('US')"/>
               </ns0:CountryCode>
            </xsl:otherwise>
         </xsl:choose>
      </client:RetrieveInfoBySKNRequest>
   </xsl:template>
</xsl:stylesheet>