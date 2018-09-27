<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/RFSHierarchyService"
xmlns:ns1="http://xmlns.hbc.com/CommonModules/RFSHierarchyService/Types"
xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/RFSREST/RFSHierarchyDataRESTService/GetClassInfo">
   <xsl:template match="/">
     <msg_in_out:RFSHierarchyDataResponse>
         <ns1:RFSHDataList>
            <xsl:for-each select="Test/Result">
               <ns1:RFSHData>
                  <ns1:deptNum>
                      <xsl:value-of select="format-number(normalize-space(DEPT_NO), '000')"/>
                  </ns1:deptNum>
                  <ns1:deptDesc/>
                  <ns1:DMMNum/>
                  <ns1:DMMDesc/>
                  <ns1:vendorNumber/>
                  <ns1:labelNm/>
                  <ns1:brandNm/>
                  <ns1:classNum>
                    <xsl:value-of select="normalize-space(CLASS_NO)"/> 
                  </ns1:classNum>
                  <ns1:className>
                      <xsl:value-of select="normalize-space(CLASS_DESC)"/>
                  </ns1:className>
                  <ns1:vendorStyleNo/>
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