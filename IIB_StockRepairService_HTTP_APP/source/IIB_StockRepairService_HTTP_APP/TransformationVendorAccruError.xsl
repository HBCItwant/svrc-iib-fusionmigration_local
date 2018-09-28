<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/GetVendorAccrualInfo" xmlns:msg_in_out="http://xmlns.hbc.com/Finance/StockRepairService" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Stock/StockRepairService/GetVendorAccrualInfo" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/http/Stock/StockRepairService/retrieveStockRepairRESTService" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://xmlns.hbc.com/Finance/StockRepairService/Types" xmlns:ns2="http://xmlns.hbc.com/MDS/RFSHierarchyDataService/DataTypes" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl db plt tns wsdl xsd msg_in_out ns0 ns1 ns2 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:decimal-format name="dollar" decimal-separator="."/>
   <xsl:template match="/">
      <msg_in_out:StockRepairResponse>
         <ns1:StockRepairResponseTypeDataList>
            <ns1:StockRepairResponseTypeData>
               <ns1:severity>
                 
                     <xsl:text disable-output-escaping="no">Error</xsl:text>
                 
               </ns1:severity>
               <ns1:code>
                 <xsl:text disable-output-escaping="no">VendAcc-0001</xsl:text>
                 
               </ns1:code>
               <ns1:message>
                  <xsl:text disable-output-escaping="no">An unexpected error occurred  while executing retrieveVendorAccrualInfo operation.</xsl:text>
                 
               </ns1:message>
            </ns1:StockRepairResponseTypeData>
         </ns1:StockRepairResponseTypeDataList>
      </msg_in_out:StockRepairResponse>
   </xsl:template>
</xsl:stylesheet>