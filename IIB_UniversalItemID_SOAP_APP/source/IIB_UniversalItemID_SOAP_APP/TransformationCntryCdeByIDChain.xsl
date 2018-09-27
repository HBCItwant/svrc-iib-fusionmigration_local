<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:client="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveByIDandChain" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk client xsd wsdl ns1 xp20 bpws aia mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <client:RetrieveByIDandChainRequest>
         <ns1:ItemID>
            <xsl:value-of select="/client:RetrieveByIDandChainRequest/ns1:ItemID"/>
         </ns1:ItemID>
         <ns1:Chain>
            <xsl:value-of select="/client:RetrieveByIDandChainRequest/ns1:Chain"/>
         </ns1:Chain>
         <xsl:choose>
            <xsl:when test="string-length(normalize-space(/client:RetrieveByIDandChainRequest/ns1:Store)) != 0.0">
               <ns1:Store>
                  <xsl:value-of select="/client:RetrieveByIDandChainRequest/ns1:Store"/>
               </ns1:Store>
            </xsl:when>
            <xsl:otherwise>
               <ns1:Store>
                  <xsl:text disable-output-escaping="no">0</xsl:text>
               </ns1:Store>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:choose>
            <xsl:when test="string-length(normalize-space(/client:RetrieveByIDandChainRequest/ns1:CountryCode)) != 0.0">
               <ns1:CountryCode>
                  <xsl:value-of select="/client:RetrieveByIDandChainRequest/ns1:CountryCode"/>
               </ns1:CountryCode>
            </xsl:when>
            <xsl:when test="(string-length(normalize-space(/client:RetrieveByIDandChainRequest/ns1:Store)) != 0.0) and ((normalize-space(/client:RetrieveByIDandChainRequest/ns1:Store) != 0.0) and (string-length(normalize-space(/client:RetrieveByIDandChainRequest/ns1:CountryCode)) = 0.0))">
               <ns1:CountryCode>
                  <xsl:value-of select="string(&quot; &quot;)"/>
               </ns1:CountryCode>
            </xsl:when>
            <xsl:otherwise>
               <ns1:CountryCode>
                  <xsl:value-of select="string(&quot;US&quot;)"/>
               </ns1:CountryCode>
            </xsl:otherwise>
         </xsl:choose>
      </client:RetrieveByIDandChainRequest>
   </xsl:template>
</xsl:stylesheet>