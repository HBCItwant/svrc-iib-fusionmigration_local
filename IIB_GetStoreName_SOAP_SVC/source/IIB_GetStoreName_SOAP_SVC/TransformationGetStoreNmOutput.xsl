<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:client="http://xmlns.hbc.com/CommonModules/GetStoreNameService/getStoreName" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://www.hbc.com/CommonModules/GetStoreName" xmlns:xsd="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xsi xsl  wsdl xsd client ns1">
   <xsl:template match="/">
      <ns1:StrNameResponse>
         <xsl:for-each select="/Test/Results">
            <xsl:sort select="STORE_NO"/>
            <ns1:StrNameResponse>
               <ns1:StoreNum>
                  <xsl:value-of select="normalize-space(STORE_NO)"/>
               </ns1:StoreNum>
               <ns1:StoreName>
                  <xsl:value-of select="normalize-space(STORE_NAME)"/>
               </ns1:StoreName>
            </ns1:StrNameResponse>
         </xsl:for-each>
      </ns1:StrNameResponse>
   </xsl:template>
</xsl:stylesheet>