<?xml version = '1.0' encoding = 'ISO-8859-1'?>
<xsl:stylesheet version="1.0" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/RFSHierarchyService" 
xmlns:ns0="http://xmlns.hbc.com/CommonModules/RFSHierarchyService/Types" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/GetMFGByDept"
xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/http/RFSREST/RFSHierarchyDataService/RFSHierarchyRequest"  >
      <xsl:template match="/">
      <msg_in_out:RFSHierarchyDataResponse>
         <ns0:RFSHDataList>
            <xsl:for-each select="Query/Result">
               <ns0:RFSHData>
                  <ns0:deptNum>
                     <xsl:value-of select="format-number(normalize-space(DEPT_NO), '000')"/>
                  </ns0:deptNum>
                  <ns0:deptDesc/>
                  <ns0:DMMNum/>
                  <ns0:DMMDesc/>
                  <ns0:vendorNumber/>
                  <ns0:labelNm>
                     <xsl:value-of select="normalize-space(MFG_NAME)"/>
                  </ns0:labelNm>
                  <ns0:MfgNo>
                     <xsl:value-of select="format-number(normalize-space(MFG_NO), '000')"/>
                  </ns0:MfgNo>
                  <ns0:brandNm/>
                  <ns0:classNum/>
                  <ns0:className/>
                  <ns0:vendorStyleNo/>
                  <ns0:chain>
                     <xsl:value-of select="normalize-space(CHAIN)"/>
                  </ns0:chain>
                  <ns0:severity/>
                  <ns0:code/>
                  <ns0:message/>
               </ns0:RFSHData>
            </xsl:for-each>
         </ns0:RFSHDataList>
      </msg_in_out:RFSHierarchyDataResponse>
   </xsl:template>
</xsl:stylesheet>