<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://xmlns.saksinc.com/Locator/POSLocateItemInfo" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://www.xmlns.saksinc.com/Locator/POSLocateItemInfo/Types" xmlns:client="http://xmlns.saksinc.com/Locator/POSLocatorItemInfo/ItemInformation" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Locator/POSLocatorItemInfo/GetItemInfoByDeptClassMfgVendorStyle" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetItemInfoByDeptClassMfgVendorStyle" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 ns2 client wsdl plnk xsd plt tns top aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <top:RfItem>
         <top:classNo>
            <xsl:value-of select="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:Class"/>
         </top:classNo>
         <top:vendorStyle>
            <xsl:value-of select="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:VendorStyle"/>
         </top:vendorStyle>
         <top:rfDeptMfg>
            <top:deptNo>
               <xsl:value-of select="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:Department"/>
            </top:deptNo>
            <top:mfgNo>
               <xsl:value-of select="/ns1:ItemInfoRequest/ns1:SearchCriteria/ns2:MFG"/>
            </top:mfgNo>
         </top:rfDeptMfg>
      </top:RfItem>
   </xsl:template>
</xsl:stylesheet>