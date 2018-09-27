<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/RFSHierarchyService" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/RFSREST/RFSHierarchyDataRESTService/GetDeptInfoByChain" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://xmlns.hbc.com/CommonModules/RFSHierarchyService/Types" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetDeptInfoByChain" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/http/RFSREST/RFSHierarchyDataService/RFSHierarchyRequest" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://xmlns.hbc.com/MDS/RFSHierarchyDataService/DataTypes" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl msg_in_out tns plt wsdl ns1 top ns0 xsd ns2 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">

   <xsl:template match="/">
      <msg_in_out:RFSHierarchyDataResponse>
         <ns1:RFSHDataList>
            <xsl:for-each select="Test/Result">
               <ns1:RFSHData>
                  <ns1:deptNum>
                     <xsl:value-of select="format-number(normalize-space(DEPT_NO),'000')"/>
                  </ns1:deptNum>
                  <ns1:deptDesc>
                     <xsl:value-of select="normalize-space(DEPT_DESC)"/>
                  </ns1:deptDesc>
                  <ns1:DMMNum/>
                  <ns1:DMMDesc/>
                  <ns1:vendorNumber/>
                  <ns1:labelNm/>
                  <ns1:brandNm/>
                  <ns1:classNum/>
                  <ns1:className/>
                  <ns1:vendorStyleNo/>
                  <ns1:chain/>
                  <ns1:severity/>
                  <ns1:code/>
                  <ns1:message/>
               </ns1:RFSHData>
            </xsl:for-each>
         </ns1:RFSHDataList>
      </msg_in_out:RFSHierarchyDataResponse>
   </xsl:template>
</xsl:stylesheet>