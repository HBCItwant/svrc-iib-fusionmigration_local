<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsi xsl plt wsdl top xsd tns ns0 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://www.xmlns.hbc.com" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/CommonModules/RFSStoreInfo/GetStoreInfo" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetStoreInfo" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <ns0:GetStoreInormationResponse>
         <xsl:for-each select="/Query/Result">
            <ns0:GetStoreInformationCollection>
               <ns0:StoreNum>
                  <xsl:value-of select="format-number(STORE_NO,&quot;###000&quot;)"></xsl:value-of>
               </ns0:StoreNum>
               <ns0:Chain>
                  <xsl:value-of select="CHAIN"></xsl:value-of>
               </ns0:Chain>
               <ns0:StoreName>
                  <xsl:value-of select="STORE_NAME"></xsl:value-of>
               </ns0:StoreName>
               <ns0:StoreDesc>
                  <xsl:value-of select="ABBR_3"></xsl:value-of>
               </ns0:StoreDesc>
               <ns0:Address1>
                  <xsl:value-of select="ADDRESS_LINE_1"></xsl:value-of>
               </ns0:Address1>
               <ns0:Address2>
                  <xsl:value-of select="ADDRESS_LINE_2"></xsl:value-of>
               </ns0:Address2>
               <ns0:StoreCity>
                  <xsl:value-of select="CITY"></xsl:value-of>
               </ns0:StoreCity>
               <ns0:StoreState>
                  <xsl:value-of select="STATE"></xsl:value-of>
               </ns0:StoreState>
               <ns0:StoreZip>
                  <xsl:value-of select="ZIPCODE_NO"></xsl:value-of>
               </ns0:StoreZip>
               <ns0:StorePhone>
                  <xsl:value-of select="PHONE_NO"></xsl:value-of>
               </ns0:StorePhone>
               <ns0:StoreType>
                  <xsl:value-of select="STORE_CLASS"></xsl:value-of>
               </ns0:StoreType>
               <ns0:StoreBusiness>
                  <xsl:value-of select="TYPE_CODE"></xsl:value-of>
               </ns0:StoreBusiness>
               <ns0:StoreOpenDate>
                  <xsl:value-of select="OPEN_DATE"></xsl:value-of>
               </ns0:StoreOpenDate>
               <ns0:StoreCloseDate>
                  <xsl:value-of select="CLOSE_DATE"></xsl:value-of>
               </ns0:StoreCloseDate>
               <ns0:CountryID>
                  <xsl:value-of select="COUNTRY_ID"></xsl:value-of>
               </ns0:CountryID>
            </ns0:GetStoreInformationCollection>
         </xsl:for-each>
      </ns0:GetStoreInormationResponse>
   </xsl:template>
</xsl:stylesheet>