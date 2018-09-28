<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://xmlns.saks.com/Stores/OMS/SaksOMSATPService/retrieveOMSATP" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:client="http://xmlns.saksinc.com/Stores/Locator/GetLocatorATP/GetLocatorATP_BPEL" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 plnk xsd client wsdl xp20 bpws aia mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <client:processResponse>
         <client:SKU>
            <xsl:value-of select="/client:processResponse/client:SKU"/>
         </client:SKU>
         <client:UPC>
            <xsl:value-of select="/client:processResponse/client:UPC"/>
         </client:UPC>
         <client:FindInd>
            <xsl:value-of select="/client:processResponse/client:FindInd"/>
         </client:FindInd>
         <client:InStoreInd>
            <xsl:value-of select="/client:processResponse/client:InStoreInd"/>
         </client:InStoreInd>
         <client:StatusCode>
            <xsl:value-of select="/client:processResponse/client:StatusCode"/>
         </client:StatusCode>
         <client:Message>
            <xsl:value-of select="/client:processResponse/client:Message"/>
         </client:Message>
         <client:CompanyATP>
            <xsl:value-of select="/client:processResponse/client:CompanyATP"/>
         </client:CompanyATP>
         <client:ReqBroadcasting>
            <xsl:value-of select="/client:processResponse/client:ReqBroadcasting"/>
         </client:ReqBroadcasting>
         <client:ReqStoreNum>
            <xsl:value-of select="/client:processResponse/client:ReqStoreNum"/>
         </client:ReqStoreNum>
         <client:ReqStoreAbbrv>
            <xsl:value-of select="/client:processResponse/client:ReqStoreAbbrv"/>
         </client:ReqStoreAbbrv>
         <client:ReqStoreName>
            <xsl:value-of select="/client:processResponse/client:ReqStoreName"/>
         </client:ReqStoreName>
         <client:ReqATP>
            <xsl:value-of select="/client:processResponse/client:ReqATP"/>
         </client:ReqATP>
         <xsl:for-each select="/client:processResponse/client:StoreATPList">
            <client:StoreATPList>
               <xsl:if test="client:Broadcasting">
                  <client:Broadcasting>
                     <xsl:value-of select="client:Broadcasting"/>
                  </client:Broadcasting>
               </xsl:if>
               <xsl:if test="client:StoreNum">
                  <client:StoreNum>
                     <xsl:value-of select="substring(client:StoreNum,string-length(client:StoreNum) - 2.0)"/>
                  </client:StoreNum>
               </xsl:if>
               <xsl:if test="client:StoreAbbrv">
                  <client:StoreAbbrv>
                     <xsl:value-of select="client:StoreAbbrv"/>
                  </client:StoreAbbrv>
               </xsl:if>
               <xsl:if test="client:StoreName">
                  <client:StoreName>
                     <xsl:value-of select="client:StoreName"/>
                  </client:StoreName>
               </xsl:if>
               <xsl:if test="client:ATP">
                  <client:ATP>
                     <xsl:value-of select="client:ATP"/>
                  </client:ATP>
               </xsl:if>
            </client:StoreATPList>
         </xsl:for-each>
         <client:ErrorCode>
            <xsl:value-of select="/client:processResponse/client:ErrorCode"/>
         </client:ErrorCode>
         <client:ErrorMessage>
            <xsl:value-of select="/client:processResponse/client:ErrorMessage"/>
         </client:ErrorMessage>
      </client:processResponse>
   </xsl:template>
</xsl:stylesheet>