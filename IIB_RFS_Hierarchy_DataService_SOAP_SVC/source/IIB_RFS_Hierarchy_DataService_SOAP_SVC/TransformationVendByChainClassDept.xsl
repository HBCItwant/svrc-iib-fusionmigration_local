<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/GetVendStyleByChainClassDept" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/RFSHierarchyService" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://xmlns.hbc.com/CommonModules/RFSHierarchyService/Types" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/RFSREST/RFSHierarchyDataService/GetVendStyleByChainClassDept" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/http/RFSREST/RFSHierarchyDataService/RFSHierarchyRequest" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://xmlns.hbc.com/MDS/RFSHierarchyDataService/DataTypes" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl db msg_in_out plt wsdl ns1 tns ns0 xsd ns2 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="inputVendStyleByChainDeptNoClass.ChainDeptClassRequestPart"/>
   <xsl:template match="/">
      <msg_in_out:RFSHierarchyDataResponse>
         <ns1:RFSHDataList>
            <xsl:for-each select="Query/Result">
               <ns1:RFSHData>
                  <ns1:deptNum>
                     <xsl:value-of select="format-number(normalize-space(DEPT_NO), '000')"/>
                  </ns1:deptNum>
                  <ns1:deptDesc/>
                  <ns1:DMMNum/>
                  <ns1:DMMDesc/>
                  <ns1:vendorNumber/>
                  <ns1:labelNm>
                     <xsl:value-of select="normalize-space(MFG_NAME)"/>
                  </ns1:labelNm>
                  <ns1:brandNm/>
                  <ns1:classNum>
                     <xsl:value-of select="format-number(normalize-space(CLASS_NO), '000')"/>
                  </ns1:classNum>
                  <ns1:className/>
                  <ns1:vendorStyleNo>
                     <xsl:value-of select="normalize-space(VENDOR_STYLE)"/>
                  </ns1:vendorStyleNo>
                  <ns1:chain>
                     <xsl:value-of select="normalize-space(CHAIN)"/>
                  </ns1:chain>
                  <ns1:severity/>
                  <ns1:code/>
                  <ns1:message/>
               </ns1:RFSHData>
            </xsl:for-each>
         </ns1:RFSHDataList>
      </msg_in_out:RFSHierarchyDataResponse>
   </xsl:template>
</xsl:stylesheet>