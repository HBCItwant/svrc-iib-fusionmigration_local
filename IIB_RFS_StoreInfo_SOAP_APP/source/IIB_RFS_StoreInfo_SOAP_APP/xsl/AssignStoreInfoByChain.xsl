<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetStoresByChain_DB" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:client="http://xmlns.hbc.com/CommonModules/RFSStoreInfo/GetStoresByChain" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://www.xmlns.hbc.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/CommonModules/RFSStoreInfo/GetStoresByChain_DB" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl top plt wsdl xsd tns client ns1 plnk aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns1:GetStoreInormationResponse>
         <xsl:for-each select="/Query/Result">
            <ns1:GetStoreInformationCollection>
               <ns1:StoreNum>
                  <xsl:value-of select="format-number(STORE_NO,&quot;###000&quot;)"/>
               </ns1:StoreNum>
               <ns1:Chain>
                  <xsl:value-of select="CHAIN"/>
               </ns1:Chain>
               <ns1:StoreName>
                  <xsl:value-of select="STORE_NAME"/>
               </ns1:StoreName>
               <ns1:StoreDesc>
                  <xsl:value-of select="ABBR_3"/>
               </ns1:StoreDesc>
               <ns1:Address1>
                  <xsl:value-of select="ADDRESS_LINE_1"/>
               </ns1:Address1>
               <ns1:Address2>
                  <xsl:value-of select="ADDRESS_LINE_2"/>
               </ns1:Address2>
               <ns1:StoreCity>
                  <xsl:value-of select="CITY"/>
               </ns1:StoreCity>
               <ns1:StoreState>
                  <xsl:value-of select="STATE"/>
               </ns1:StoreState>
               <ns1:StoreZip>
                  <xsl:value-of select="ZIPCODE_NO"/>
               </ns1:StoreZip>
               <ns1:StorePhone>
                  <xsl:value-of select="PHONE_NO"/>
               </ns1:StorePhone>
               <ns1:StoreType>
                  <xsl:value-of select="STORE_CLASS"/>
               </ns1:StoreType>
               <ns1:StoreBusiness>
                  <xsl:value-of select="STATUS_CODE"/>
               </ns1:StoreBusiness>
               <ns1:StoreOpenDate>
                  <xsl:value-of select="OPEN_DATE"/>
               </ns1:StoreOpenDate>
               <ns1:StoreCloseDate>
                  <xsl:value-of select="CLOSE_DATE"/>
               </ns1:StoreCloseDate>
               <ns1:CountryID>
                  <xsl:value-of select="COUNTRY_ID"/>
               </ns1:CountryID>
            </ns1:GetStoreInformationCollection>
         </xsl:for-each>
      </ns1:GetStoreInormationResponse>
   </xsl:template>
</xsl:stylesheet>