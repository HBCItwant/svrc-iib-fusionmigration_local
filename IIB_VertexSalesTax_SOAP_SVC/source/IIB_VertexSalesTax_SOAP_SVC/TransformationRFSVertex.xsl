<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:ns2="http://www.example.org" 
xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Vertex/VertexSalesTax/GetSaksTaxRFS" 
xmlns:client="http://xmlns.oracle.com/Other/VertexSalesTax/GetSalesTax" 
xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" 
xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" 
xmlns:vev="urn:vertexinc:o-series:tps:6:0" 

xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 

xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" 
xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/GetSaksTaxRFS" 
>
   <!-- xsl:param name="GetSaksTaxRFSOutput.GetSaksTaxRFSOutputCollection"/-->
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
                <!-- xsl:value-of select="xp20:format-dateTime(xp20:current-date(),&quot;[Y0001]-[M01]-[D01]&quot;)"/-->
                <xsl:value-of select="/X/getItemTax/castDate"/>
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
                     <xsl:value-of select="/X/getItemTax/store"/>
                  </xsl:attribute>
               </vev:PhysicalOrigin>
            </vev:Seller>
            <vev:Customer>
               <vev:Destination>
                  <vev:PostalCode>
                     <xsl:value-of select="/X/getItemTax/zip"/>
                  </vev:PostalCode>
               </vev:Destination>
            </vev:Customer>
            <vev:LineItem>
               <xsl:attribute name="lineItemNumber">
                  <xsl:text disable-output-escaping="no">1</xsl:text>
               </xsl:attribute>
               <vev:Product>
                  <xsl:attribute name="productClass">
                     
                    <xsl:value-of select="/X/getItemTax/Result"/>
                  </xsl:attribute>
               </vev:Product>
               <vev:ExtendedPrice>
                  <xsl:value-of select="/X/getItemTax/Price"/>
               </vev:ExtendedPrice>
            </vev:LineItem>
         </vev:QuotationRequest>
      </vev:VertexEnvelope>
   </xsl:template>
</xsl:stylesheet>