<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns1="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveByIDandChain" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:client="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveByDeptClass" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk ns1 xsd wsdl ns0 client bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <xsl:variable name="apos">''</xsl:variable>
      <xsl:variable name="ReplaceStyleHTMLLeftParenthesis">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="/ns1:RetrieveByDeptClassRequest/ns0:StyleNo">
               <client:input>
                  <xsl:value-of select="$ReplaceStyleHTMLLeftParenthesis"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%28'"/>
            <xsl:with-param name="by" select="'('"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceStyleHTMLRightParenthesis">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceStyleHTMLLeftParenthesis">
               <client:input>
                  <xsl:value-of select="$ReplaceStyleHTMLRightParenthesis"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%29'"/>
            <xsl:with-param name="by" select="')'"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceStyleHTMLAmpersand">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceStyleHTMLRightParenthesis">
               <client:input>
                  <xsl:value-of select="$ReplaceStyleHTMLAmpersand"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%26'"/>
            <xsl:with-param name="by" select="'&amp;'"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceStyleHTMLCommas">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceStyleHTMLAmpersand">
               <client:input>
                  <xsl:value-of select="$ReplaceStyleHTMLCommas"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%2C'"/>
            <xsl:with-param name="by" select="','"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceStyleHTMLSpaces">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceStyleHTMLCommas">
               <client:input>
                  <xsl:value-of select="$ReplaceStyleHTMLSpaces"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%20'"/>
            <xsl:with-param name="by" select="' '"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceStyleSingleQuote">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceStyleHTMLSpaces">
               <client:input>
                  <xsl:value-of select="$ReplaceStyleSingleQuote"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%27'"/>
            <xsl:with-param name="by" select="$apos"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceStylePlusSign">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceStyleSingleQuote">
               <client:input>
                  <xsl:value-of select="$ReplaceStylePlusSign"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%2B'"/>
            <xsl:with-param name="by" select="'+'"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceStyleForwardSlash">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceStylePlusSign">
               <client:input>
                  <xsl:value-of select="$ReplaceBrandForwardSlash"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%2F'"/>
            <xsl:with-param name="by" select="'/'"/>
         </xsl:call-template>
      </xsl:variable>
      <ns1:RetrieveByDeptClassRequest>
         <ns0:DeptNo>
            <xsl:value-of select="/ns1:RetrieveByDeptClassRequest/ns0:DeptNo"/>
         </ns0:DeptNo>
         <ns0:ClassNo>
            <xsl:value-of select="/ns1:RetrieveByDeptClassRequest/ns0:ClassNo"/>
         </ns0:ClassNo>
         <ns0:StyleNo>
            <xsl:value-of select="$ReplaceStyleForwardSlash"/>
         </ns0:StyleNo>
         <ns0:CountryCode>
            <xsl:value-of select="/ns1:RetrieveByDeptClassRequest/ns0:CountryCode"/>
         </ns0:CountryCode>
      </ns1:RetrieveByDeptClassRequest>
   </xsl:template>
   <xsl:template name="string-replace-all">
      <xsl:param name="text"/>
      <xsl:param name="replace"/>
      <xsl:param name="by"/>
      <xsl:choose>
         <xsl:when test="contains($text, $replace)">
            <xsl:value-of select="substring-before($text,$replace)"/>
            <xsl:value-of select="$by"/>
            <xsl:call-template name="string-replace-all">
               <xsl:with-param name="text" select="substring-after($text,$replace)"/>
               <xsl:with-param name="replace" select="$replace"/>
               <xsl:with-param name="by" select="$by"/>
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$text"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>