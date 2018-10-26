<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsi xsl plnk client xsd wsdl ns1 bpws ns0  bpel" version="1.0" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:client="http://xmlns.hbc.com/CommonModules/RFSStoreInfo/GetStoreByIP" xmlns:ns0="http://www.xmlns.hbc.com" xmlns:ns1="http://www.xmlns.hbc.com" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <ns1:GetStoreInormationResponse>
         <xsl:for-each select="/ns0:GetStoreInormationResponse/ns0:GetStoreInformationCollection">
            <ns1:GetStoreInformationCollection>
               <ns1:StoreNum>
                  <xsl:value-of select="format-number(ns0:StoreNum,'###000')"></xsl:value-of>
               </ns1:StoreNum>
               <ns1:Chain>
                  <xsl:value-of select="ns0:Chain"></xsl:value-of>
               </ns1:Chain>
               <ns1:StoreName>
                  <xsl:value-of select="ns0:StoreName"></xsl:value-of>
               </ns1:StoreName>
               <ns1:StoreDesc>
                  <xsl:value-of select="ns0:StoreDesc"></xsl:value-of>
               </ns1:StoreDesc>
               <ns1:Address1>
                  <xsl:value-of select="ns0:Address1"></xsl:value-of>
               </ns1:Address1>
               <ns1:Address2>
                  <xsl:value-of select="ns0:Address2"></xsl:value-of>
               </ns1:Address2>
               <ns1:StoreCity>
                  <xsl:value-of select="ns0:StoreCity"></xsl:value-of>
               </ns1:StoreCity>
               <ns1:StoreState>
                  <xsl:value-of select="ns0:StoreState"></xsl:value-of>
               </ns1:StoreState>
               <ns1:StoreZip>
                  <xsl:value-of select="ns0:StoreZip"></xsl:value-of>
               </ns1:StoreZip>
               <ns1:StoreZipPlus4>
                  <xsl:value-of select="ns0:StoreZipPlus4"></xsl:value-of>
               </ns1:StoreZipPlus4>
               <ns1:StorePhone>
                  <xsl:value-of select="ns0:StorePhone"></xsl:value-of>
               </ns1:StorePhone>
               <ns1:StoreType>
                  <xsl:value-of select="ns0:StoreType"></xsl:value-of>
               </ns1:StoreType>
               <ns1:StoreTypeDesc>
                  <xsl:value-of select="ns0:StoreTypeDesc"></xsl:value-of>
               </ns1:StoreTypeDesc>
               <ns1:StoreBusiness>
                  <xsl:value-of select="ns0:StoreBusiness"></xsl:value-of>
               </ns1:StoreBusiness>
               <ns1:StoreBusinessDesc>
                  <xsl:value-of select="ns0:StoreBusinessDesc"></xsl:value-of>
               </ns1:StoreBusinessDesc>
               <ns1:StoreStatus>
                  <xsl:value-of select="ns0:StoreStatus"></xsl:value-of>
               </ns1:StoreStatus>
               <ns1:StoreStatusDesc>
                  <xsl:value-of select="ns0:StoreStatusDesc"></xsl:value-of>
               </ns1:StoreStatusDesc>
               <ns1:StoreOpenDate>
                  <xsl:value-of select="ns0:StoreOpenDate"></xsl:value-of>
               </ns1:StoreOpenDate>
               <ns1:StoreCloseDate>
                  <xsl:value-of select="ns0:StoreCloseDate"></xsl:value-of>
               </ns1:StoreCloseDate>
               <ns1:StoreSellInd>
                  <xsl:value-of select="ns0:StoreSellInd"></xsl:value-of>
               </ns1:StoreSellInd>
            </ns1:GetStoreInformationCollection>
         </xsl:for-each>
      </ns1:GetStoreInormationResponse>
   </xsl:template>
</xsl:stylesheet>