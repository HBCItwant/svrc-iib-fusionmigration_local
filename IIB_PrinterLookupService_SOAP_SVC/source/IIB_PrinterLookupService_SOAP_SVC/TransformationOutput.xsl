<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
 xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/PrinterLookupService" 
 xmlns:ns1="http://xmlns.hbc.com/CommonModules/PrinterLookupService/Types" 
 xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/GetPrinterInfo" 
 xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/http/Printer/PrinterLookupService/retrievePrinterInfoREST" 
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" 
 xmlns:xsd="http://www.w3.org/2001/XMLSchema">
   <xsl:param name="FaultVariable.FaultPart"/>
   <xsl:template match="/">
      <msg_in_out:PrinterLookupResponse>
         <ns1:PrinterLookupDataList>
            <xsl:for-each select="Test/Result">
               <ns1:PrinterLookupData>
                  <ns1:printerID>
                     <xsl:value-of select="normalize-space(PRINTER_ID)"/>
                  </ns1:printerID>
                  <ns1:storeNum>
                     <xsl:value-of select="normalize-space(STOR_NUM)"/>
                  </ns1:storeNum>
                  <ns1:printer>
                     <!-- xsl:value-of select="normalize-space(db:MONARCH_ID)"/-->
                     <xsl:value-of select="normalize-space(column2)"/>
                  </ns1:printer>
                  <ns1:printerTypeCode>
                     <xsl:value-of select="normalize-space(PRINTER_TYP_CDE)"/>
                  </ns1:printerTypeCode>
                  <ns1:printerIPAddress>
                     <xsl:value-of select="normalize-space(PRINTER_IP_ADDR)"/>
                  </ns1:printerIPAddress>
                  <ns1:severity>
                     <xsl:value-of select="$FaultVariable.FaultPart/msg_in_out:PrinterLookupFault/ns1:severity"/>
                  </ns1:severity>
                  <ns1:code>
                     <xsl:value-of select="$FaultVariable.FaultPart/msg_in_out:PrinterLookupFault/ns1:code"/>
                  </ns1:code>
                  <ns1:message>
                     <xsl:value-of select="$FaultVariable.FaultPart/msg_in_out:PrinterLookupFault/ns1:message"/>
                  </ns1:message>
               </ns1:PrinterLookupData>
            </xsl:for-each>
         </ns1:PrinterLookupDataList>
      </msg_in_out:PrinterLookupResponse>
   </xsl:template>
</xsl:stylesheet>