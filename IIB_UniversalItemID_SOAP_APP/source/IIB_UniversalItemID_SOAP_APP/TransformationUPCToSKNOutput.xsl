<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://xmlns.saksinc.com/CommonModules/UniversalItemID" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:client="http://xmlns.oracle.com/UID/UniversalItemID/getSKNByUPC" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 plnk client xsd wsdl ns0 xp20 bpws aia mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:param name="SKNOutput"/>
   <xsl:template match="/">
      <ns1:RetrieveSKNByUPCResponse>
         <xsl:for-each select="Query/Result">
            <ns0:ItemID>
               <ns0:SKN>
                  <xsl:value-of select="normalize-space(SKN_NO)"/>
               </ns0:SKN>
               <ns0:REORDER_UPC_NO>
                  <xsl:value-of select="normalize-space(UPC)"/>
               </ns0:REORDER_UPC_NO>
            </ns0:ItemID>
         </xsl:for-each>
         <xsl:for-each select="/ns1:RetrieveSKNByUPCRequest/ns0:ItemIDList/ns0:ItemID">
            <xsl:variable name="Item" select="number(normalize-space(.))"/>
            <xsl:choose>
               <xsl:when test="(string-length(normalize-space(Query/Result[(UPC = $Item)]/SKN_NO)) = 0) and (string-length(normalize-space(Query/Result[(SKN_NO = $Item)]/UPC)) = 0)">
                  <ns0:InvalidItemID>
                     <ns0:ItemID>
                        <xsl:value-of select="normalize-space(.)"/>
                     </ns0:ItemID>
                  </ns0:InvalidItemID>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
      </ns1:RetrieveSKNByUPCResponse>
   </xsl:template>
</xsl:stylesheet>
