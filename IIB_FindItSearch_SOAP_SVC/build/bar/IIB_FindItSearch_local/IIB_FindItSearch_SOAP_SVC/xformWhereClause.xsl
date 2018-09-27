<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0"  xmlns:ns0="http://xmlns.saksinc.com/CommonModules/LookupFindIt/Types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:ns2="http://www.xmlns.saksinc.com" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://xmlns.saksinc.com/CommonModules/LookupFindIt">
   <xsl:template match="/">
      <ns2:WhereClause>
         <xsl:if test="/ns1:FindItRequest/ns0:Chain">
            <ns2:Chain>
               <xsl:value-of select="concat(&quot;WHERE D.CHAIN = &quot;,/ns1:FindItRequest/ns0:Chain,&quot; &quot;)"/>
            </ns2:Chain>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:CountryCode">
            <ns2:CountryCode>
               <xsl:value-of select="concat(&quot;AND F.MDSE_COUNTRY_CODE = '&quot;,/ns1:FindItRequest/ns0:CountryCode,&quot;' &quot;)"/>
            </ns2:CountryCode>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:DeptNo">
            <ns2:DeptNo>
               <xsl:value-of select="concat(&quot;AND A.DEPT_NO = &quot;,/ns1:FindItRequest/ns0:DeptNo,&quot; &quot;)"/>
            </ns2:DeptNo>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:ClassNo">
            <ns2:ClassNo>
               <xsl:value-of select="concat(&quot;AND A.CLASS_NO = &quot;,/ns1:FindItRequest/ns0:ClassNo,&quot; &quot;)"/>
            </ns2:ClassNo>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:SSN">
            <ns2:SSN>
               <xsl:value-of select="concat(&quot;AND A.SSN = '&quot;,/ns1:FindItRequest/ns0:SSN,&quot;' &quot;)"/>
            </ns2:SSN>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:VendorStyle">
            <ns2:VendorStyle>
               <xsl:value-of select="concat(&quot;AND A.VENDOR_STYLE_20CH LIKE '&quot;,/ns1:FindItRequest/ns0:VendorStyle,&quot;%' &quot;)"/>
            </ns2:VendorStyle>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:MFGName">
            <ns2:MfgName>
               <xsl:value-of select="concat(&quot;AND C.MFG_NAME LIKE '&quot;,/ns1:FindItRequest/ns0:MFGName,&quot;%' &quot;)"/>
            </ns2:MfgName>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:MFGNo">
            <ns2:MfgNo>
               <xsl:value-of select="concat(&quot;AND A.MFG_NO = &quot;,/ns1:FindItRequest/ns0:MFGNo,&quot; &quot;)"/>
            </ns2:MfgNo>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:GMM">
            <ns2:GMMNo>
               <xsl:value-of select="concat(&quot;AND G.GMM_NO = &quot;,/ns1:FindItRequest/ns0:GMM,&quot; &quot;)"/>
            </ns2:GMMNo>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:DMM">
            <ns2:DMMNo>
               <xsl:value-of select="concat(&quot;AND G.DMM_NO = &quot;,/ns1:FindItRequest/ns0:DMM,&quot; &quot;)"/>
            </ns2:DMMNo>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:UdaID">
            <ns2:UdaID>
               <xsl:value-of select="concat(&quot;AND J.UDA_ID = &quot;,/ns1:FindItRequest/ns0:UdaID,&quot; &quot;)"/>
            </ns2:UdaID>
         </xsl:if>
         <xsl:if test="/ns1:FindItRequest/ns0:UdaValue">
            <ns2:UdaValue>
               <xsl:value-of select="concat(&quot;AND I.UDA_VALUE = &quot;,/ns1:FindItRequest/ns0:UdaValue,&quot; &quot;)"/>
            </ns2:UdaValue>
         </xsl:if>
      </ns2:WhereClause>
   </xsl:template>
</xsl:stylesheet>