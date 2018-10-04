<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://xmlns.saksinc.com/CommonModules/LookupFindIt/Types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:client="http://xmlns.saksinc.com/CommonModules/FinditSearch/LookupFindIt" xmlns:ns2="http://www.xmlns.saksinc.com" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
     xmlns:ns1="http://xmlns.saksinc.com/CommonModules/LookupFindIt">
   <xsl:template match="/">
      <xsl:variable name="apos">''</xsl:variable>
      <xsl:variable name="ReplaceHTMLLeftParenthesis">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="/ns1:FindItRequest/ns0:RestXML">
               <client:input>
                  <xsl:value-of select="$ReplaceHTMLLeftParenthesis"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%28'"/>
            <xsl:with-param name="by" select="'('"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceHTMLRightParenthesis">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceHTMLLeftParenthesis">
               <client:input>
                  <xsl:value-of select="$ReplaceHTMLRightParenthesis"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%29'"/>
            <xsl:with-param name="by" select="')'"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceHTMLAmpersand">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceHTMLRightParenthesis">
               <client:input>
                  <xsl:value-of select="$ReplaceHTMLAmpersand"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%26'"/>
            <xsl:with-param name="by" select="'&amp;'"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceHTMLCommas">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceHTMLAmpersand">
               <client:input>
                  <xsl:value-of select="$ReplaceHTMLCommas"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%2C'"/>
            <xsl:with-param name="by" select="','"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceHTMLSpaces">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceHTMLCommas">
               <client:input>
                  <xsl:value-of select="$ReplaceHTMLSpaces"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%20'"/>
            <xsl:with-param name="by" select="' '"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceHTMLSingleQuote">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceHTMLSpaces">
               <client:input>
                  <xsl:value-of select="$ReplaceHTMLSingleQuote"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%27'"/>
            <xsl:with-param name="by" select="$apos"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceHTMLPlusSign">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceHTMLSingleQuote">
               <client:input>
                  <xsl:value-of select="$ReplaceHTMLPlusSign"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%2B'"/>
            <xsl:with-param name="by" select="'+'"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:variable name="ReplaceHTMLForwardSlash">
         <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="$ReplaceHTMLPlusSign">
               <client:input>
                  <xsl:value-of select="$ReplaceHTMLForwardSlash"/>
               </client:input>
            </xsl:with-param>
            <xsl:with-param name="replace" select="'%2F'"/>
            <xsl:with-param name="by" select="'/'"/>
         </xsl:call-template>
      </xsl:variable>
      <ns1:FindItRequest>
         <ns0:RestXML>
            <xsl:value-of select="$ReplaceHTMLForwardSlash"/>
         </ns0:RestXML>
      </ns1:FindItRequest>
   </xsl:template>
   <xsl:template name="string-replace-all">
      <xsl:param name="text"/>
      <xsl:param name="replace"/>
      <xsl:param name="by"/>
      <xsl:choose>
         <xsl:when test="contains($text, $replace)">
            <xsl:value-of select="substring-before($text,$replace)"/>
            <xsl:value-of select="$by"/>
            <xsl:call-template name="string-replace-all">
               <xsl:with-param name="text" select="substring-after($text,$replace)"/>
               <xsl:with-param name="replace" select="$replace"/>
               <xsl:with-param name="by" select="$by"/>
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$text"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>