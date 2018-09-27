<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/PrinterLookupService" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns0="http://xmlns.hbc.com/CommonModules/PrinterLookupService/Types" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/GetPrinterInfo" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/http/Printer/PrinterLookupService/retrievePrinterInfoREST" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/Printer/PrinterLookupService/GetPrinterInfo" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl msg_in_out ns0 plt wsdl tns xsd db ns1 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <db:GetPrinterInfoInput>
         <db:arg1>
            <xsl:value-of select="/msg_in_out:PrinterLookupRequest/ns0:storeNumber"/>
         </db:arg1>
         <xsl:choose>
            <xsl:when test="string-length(normalize-space(/msg_in_out:PrinterLookupRequest/ns0:printerID)) = 0.0">
               <db:arg2>
                  <xsl:text disable-output-escaping="no">%</xsl:text>
               </db:arg2>
            </xsl:when>
            <xsl:otherwise>
               <db:arg2>
                  <xsl:value-of select="normalize-space(/msg_in_out:PrinterLookupRequest/ns0:printerID)"/>
               </db:arg2>
            </xsl:otherwise>
         </xsl:choose>
         <db:arg3>
            <xsl:value-of select="/msg_in_out:PrinterLookupRequest/ns0:storeNumber"/>
         </db:arg3>
         <xsl:choose>
            <xsl:when test="string-length(normalize-space(/msg_in_out:PrinterLookupRequest/ns0:printerID)) = 0.0">
               <db:arg4>
                  <xsl:text disable-output-escaping="no">%</xsl:text>
               </db:arg4>
            </xsl:when>
            <xsl:otherwise>
               <db:arg4>
                  <xsl:value-of select="normalize-space(/msg_in_out:PrinterLookupRequest/ns0:printerID)"/>
               </db:arg4>
            </xsl:otherwise>
         </xsl:choose>
      </db:GetPrinterInfoInput>
   </xsl:template>
</xsl:stylesheet>