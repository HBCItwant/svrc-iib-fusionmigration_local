<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsi xsl tns1 vev xsd wsdlsoap wsdl ns0 bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap" version="1.0" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://www.example.org" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns1="http://www.vertexinc.com/oseries/services/CalculateTax60" xmlns:vev="urn:vertexinc:o-series:tps:6:0" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsdlsoap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <ns0:getItemTaxResponse>
         <ns0:getItemTaxResult>
            <ns0:StatusCode>
               <xsl:value-of select="string(&quot; &quot;)"></xsl:value-of>
            </ns0:StatusCode>
            <ns0:TaxAmount>
               <xsl:value-of select="/vev:VertexEnvelope/vev:QuotationResponse/vev:TotalTax"></xsl:value-of>
            </ns0:TaxAmount>
         </ns0:getItemTaxResult>
      </ns0:getItemTaxResponse>
   </xsl:template>
</xsl:stylesheet>