<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsi xsl ns0 ns1 xsd wsdlsoap wsdl tns1 vev aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://www.example.org" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/GetProductClassDB2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns1="http://www.vertexinc.com/oseries/services/CalculateTax60" xmlns:vev="urn:vertexinc:o-series:tps:6:0" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsdlsoap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:param name="GetProductClassDB2_Output.GetProductClassDB2OutputCollection"></xsl:param>
   <xsl:template match="/">
      <vev:VertexEnvelope>
         <vev:Login>
            <vev:UserName>
               <xsl:text disable-output-escaping="no">saVertexSDIR</xsl:text>
            </vev:UserName>
            <vev:Password>
               <xsl:text disable-output-escaping="no">VT_tp3176*</xsl:text>
            </vev:Password>
         </vev:Login>
         <vev:QuotationRequest>
            <xsl:attribute name="documentDate">
               <xsl:value-of select="xp20:format-dateTime(xp20:current-date(),&quot;[Y0001]-[M01]-[D01]&quot;)"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="transactionType">
               <xsl:text disable-output-escaping="no">SALE</xsl:text>
            </xsl:attribute>
            <vev:Seller>
               <vev:Company>
                  <xsl:text disable-output-escaping="no">HSKS</xsl:text>
               </vev:Company>
               <vev:Division>
                  <xsl:text disable-output-escaping="no">SDI</xsl:text>
               </vev:Division>
               <vev:PhysicalOrigin>
                  <xsl:attribute name="locationCode">
                     <xsl:value-of select="/ns0:getItemTax/ns0:store"></xsl:value-of>
                  </xsl:attribute>
               </vev:PhysicalOrigin>
            </vev:Seller>
            <vev:Customer>
               <vev:Destination>
                  <vev:PostalCode>
                     <xsl:value-of select="/ns0:getItemTax/ns0:zip"></xsl:value-of>
                  </vev:PostalCode>
               </vev:Destination>
            </vev:Customer>
            <vev:LineItem>
               <xsl:attribute name="lineItemNumber">
                  <xsl:text disable-output-escaping="no">1</xsl:text>
               </xsl:attribute>
               <vev:Product>
                  <xsl:attribute name="productClass">
                     <xsl:value-of select="$GetProductClassDB2_Output.GetProductClassDB2OutputCollection/ns1:GetProductClassDB2OutputCollection/ns1:GetProductClassDB2Output/ns1:merch_tax_ind"></xsl:value-of>
                  </xsl:attribute>
               </vev:Product>
               <vev:ExtendedPrice>
                  <xsl:value-of select="/ns0:getItemTax/ns0:Price"></xsl:value-of>
               </vev:ExtendedPrice>
            </vev:LineItem>
         </vev:QuotationRequest>
      </vev:VertexEnvelope>
   </xsl:template>
</xsl:stylesheet>