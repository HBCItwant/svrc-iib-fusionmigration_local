<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsi xsl bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap ns0" version="1.0" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <xsl:copy>
         <xsl:apply-templates></xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   <xsl:template match="*">
      <xsl:element name="{local-name()}">
         <xsl:apply-templates select="@*|node()"></xsl:apply-templates>
      </xsl:element>
   </xsl:template>
   <xsl:template match="@*">
      <xsl:choose>
         <xsl:when test="name() != 'xmlns'">
            <xsl:attribute name="{local-name()}">
               <xsl:value-of select="."></xsl:value-of>
            </xsl:attribute>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>