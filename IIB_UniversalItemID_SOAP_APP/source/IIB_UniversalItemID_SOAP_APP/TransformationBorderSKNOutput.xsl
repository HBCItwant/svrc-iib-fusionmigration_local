<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:msg_in_out="http://xmlns.saksinc.com/CommonModules/UniversalItemID" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/UID/UniversalItemID/GetSaksItemInformation" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/http/UID/UniversalItemID/ItemInformationService" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetSaksItemInformation" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns plt wsdl top xsd msg_in_out ns0 ns1 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <msg_in_out:RetrieveByBorderSKNResponse>
         <xsl:for-each select="/Query/Result">
            <msg_in_out:RetrieveByBorderSKNResp>
               <ns1:Chain>
                  <xsl:value-of select="normalize-space(CHAIN)"/>
               </ns1:Chain>
               <ns1:SSN>
                  <xsl:value-of select="normalize-space(SSN)"/>
               </ns1:SSN>
               <ns1:SKN>
                  <xsl:value-of select="normalize-space(SKN_NO)"/>
               </ns1:SKN>
               <ns1:SVS>
                  <xsl:value-of select="normalize-space(SVS)"/>
               </ns1:SVS>
               <ns1:UPC>
                  <xsl:value-of select="normalize-space(UPC)"/>
               </ns1:UPC>
               <ns1:ReorderUPC>
                  <xsl:value-of select="normalize-space(REORDER_UPC_NO)"/>
               </ns1:ReorderUPC>
               <ns1:CountryCode>
                  <xsl:value-of select="normalize-space(MDSE_COUNTRY_CODE)"/>
               </ns1:CountryCode>
            </msg_in_out:RetrieveByBorderSKNResp>
         </xsl:for-each>
      </msg_in_out:RetrieveByBorderSKNResponse>
   </xsl:template>
</xsl:stylesheet>