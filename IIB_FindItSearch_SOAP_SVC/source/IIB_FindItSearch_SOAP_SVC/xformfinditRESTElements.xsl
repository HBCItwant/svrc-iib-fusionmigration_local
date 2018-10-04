<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0"  xmlns:fidtyp="http://xmlns.saksinc.com/CommonModules/LookupFindIt/Types" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:fid="http://xmlns.saksinc.com/CommonModules/LookupFindIt" >
   <xsl:template match="/">
      <fid:FindItRequest>
         <fidtyp:Chain>
            <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;CHAIN=&quot;),&quot;&amp;&quot;)"/>
         </fidtyp:Chain>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;COUNTRYCODE=&quot;)">
            <fidtyp:CountryCode>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;COUNTRYCODE=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:CountryCode>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;DEPTNO=&quot;)">
            <fidtyp:DeptNo>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;DEPTNO=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:DeptNo>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;CLASSNO=&quot;)">
            <fidtyp:ClassNo>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;CLASSNO=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:ClassNo>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;SSN=&quot;)">
            <fidtyp:SSN>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;SSN=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:SSN>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;VENDORSTYLE=&quot;)">
            <fidtyp:VendorStyle>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;VENDORSTYLE=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:VendorStyle>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;MFGNAME=&quot;)">
            <fidtyp:MFGName>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;MFGNAME=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:MFGName>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;MFGNO=&quot;)">
            <fidtyp:MFGNo>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;MFGNO=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:MFGNo>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;UDAID=&quot;)">
            <fidtyp:UdaID>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;UDAID=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:UdaID>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;UDAVALUE=&quot;)">
            <fidtyp:UdaValue>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;UDAVALUE=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:UdaValue>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;GMMNO=&quot;)">
            <fidtyp:GMM>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;GMMNO=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:GMM>
         </xsl:if>
         <xsl:if test="contains(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;DMMNO=&quot;)">
            <fidtyp:DMM>
               <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;DMMNO=&quot;),&quot;&amp;&quot;)"/>
            </fidtyp:DMM>
         </xsl:if>
         <fidtyp:RowStart>
            <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;ROWSTART=&quot;),&quot;&amp;&quot;)"/>
         </fidtyp:RowStart>
         <fidtyp:RowEnd>
            <xsl:value-of select="substring-before(substring-after(translate(/fid:FindItRequest/fidtyp:RestXML,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;ROWEND=&quot;),&quot;&amp;&quot;)"/>
         </fidtyp:RowEnd>
      </fid:FindItRequest>
   </xsl:template>
</xsl:stylesheet>