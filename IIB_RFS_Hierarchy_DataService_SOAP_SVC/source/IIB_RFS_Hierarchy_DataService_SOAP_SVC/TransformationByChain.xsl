<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/RFSHierarchyService" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://xmlns.hbc.com/CommonModules/RFSHierarchyService/Types" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetGMMInfo" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/RFSREST/RFSHierarchyDataService/GetGMMInfo" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/http/RFSREST/RFSHierarchyDataService/RFSHierarchyRequest" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://xmlns.hbc.com/MDS/RFSHierarchyDataService/DataTypes" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plt wsdl top tns xsd msg_in_out ns1 ns0 ns2 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <msg_in_out:RFSHierarchyDataResponse>
         <ns1:RFSHDataList>
            <xsl:for-each select="Query/Result">
               <ns1:RFSHData>
                  <ns1:deptNum>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:deptNum>
                  <ns1:deptDesc>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:deptDesc>
                  <ns1:GMMNum>
                     <xsl:value-of select="normalize-space(GMM_NO)"/>
                  </ns1:GMMNum>
                  <ns1:GMMDesc>
                     <xsl:value-of select="normalize-space(GMM_NAME)"/>
                  </ns1:GMMDesc>
                  <ns1:DMMNum>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:DMMNum>
                  <ns1:DMMDesc>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:DMMDesc>
                  <ns1:vendorNumber>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:vendorNumber>
                  <ns1:labelNm>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:labelNm>
                  <ns1:MfgNo>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:MfgNo>
                  <ns1:brandNm>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:brandNm>
                  <ns1:classNum>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:classNum>
                  <ns1:className>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:className>
                  <ns1:vendorStyleNo>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:vendorStyleNo>
                  <ns1:chain>
                     <xsl:value-of select="normalize-space(CHAIN)"/>
                  </ns1:chain>
                  <ns1:UdaDesc>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:UdaDesc>
                  <ns1:UdaID>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:UdaID>
                  <ns1:UdaValue>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:UdaValue>
                  <ns1:UdaValueDesc>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:UdaValueDesc>
                  <ns1:severity>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:severity>
                  <ns1:code>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:code>
                  <ns1:message>
                     <xsl:attribute name="xsi:nil">
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </xsl:attribute>
                  </ns1:message>
               </ns1:RFSHData>
            </xsl:for-each>
         </ns1:RFSHDataList>
      </msg_in_out:RFSHierarchyDataResponse>
   </xsl:template>
</xsl:stylesheet>