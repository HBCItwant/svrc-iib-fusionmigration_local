<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/PriceStatus" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/RetrieveItemInfoBySKN" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:client="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveByIDandChain" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/RetrieveInfoByIDandChain" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/CommonModules/UniversalItemID/RetrieveInfoByIDandChain" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/CommonModules/UniversalItemID/RetrieveItemInfoBySKN" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/CommonModules/UniversalItemID/PriceStatus" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 db plt ns0 wsdl ns1 tns ns3 xsd client plnk ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <RetrieveByIDandChainResponse>
         <SSN>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SSN"/>
         </SSN>
         <SKN>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SKN_NO"/>
         </SKN>
         <UPC>
            <xsl:value-of select="/Query/RetrieveInfoByIDandChainOutputCollection/RetrieveInfoByIDandChainOutput/UPC"/>
         </UPC>
         <SVS>
            <xsl:value-of select="/Query/RetrieveInfoByIDandChainOutputCollection/RetrieveInfoByIDandChainOutput/SVS"/>
         </SVS>
         <FashionStyleNo>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/FASHION_STYLE_NO"/>
         </FashionStyleNo>
         <VendorNum>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/VENDOR_NO"/>
         </VendorNum>
         <MdseVendorNum>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/MDSC_VENDOR_NO"/>
         </MdseVendorNum>
         <VendorStyle>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/VENDOR_STYLE_20CH"/>
         </VendorStyle>
         <DMMName>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/DMM_NAME"/>
         </DMMName>
         <DMMNo>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/DMM_NO"/>
         </DMMNo>
         <GMMName>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/GMM_NAME"/>
         </GMMName>
         <GMMNo>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/GMM_NO"/>
         </GMMNo>
         <DeptNo>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/DEPT_NO"/>
         </DeptNo>
         <DeptDesc>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/DEPT_DESC"/>
         </DeptDesc>
         <ClassNo>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CLASS_NO"/>
         </ClassNo>
         <ClassDesc>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CLASS_DESC"/>
         </ClassDesc>
         <MfgName>
            <xsl:value-of select="/Query/RetrieveInfoByIDandChainOutputCollection/RetrieveInfoByIDandChainOutput/MFG_NAME"/>
         </MfgName>
         <MfgNo>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/MFG_NO"/>
         </MfgNo>
         <ItemDescShort>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/ITEM_DESC_SHORT"/>
         </ItemDescShort>
         <ItemDescLong>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/ITEM_DESC_LONG"/>
         </ItemDescLong>
         <xsl:for-each select="/Query/PriceStatusOutputCollection/PriceStatusOutput">
            <xsl:choose>
               <xsl:when test="FUTURE_PERM = &quot;Z&quot;">
                  <PriceStatus>
                     <xsl:value-of select="PRICE_STATUS"/>
                  </PriceStatus>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <PriceTypeCode>
            <xsl:value-of select="/Query/PriceStatusOutputCollection/PriceStatusOutput/PRICE_TYPE_CODE"/>
         </PriceTypeCode>
         <ReqReasonCode>
            <xsl:value-of select="/Query/PriceStatusOutputCollection/PriceStatusOutput/REQ_REASON_NO"/>
         </ReqReasonCode>
         <SeasonCde>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SEASON_TYPE_CODE"/>
         </SeasonCde>
         <SizeCode>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SIZE_CODE"/>
         </SizeCode>
         <SizeDesc>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SIZE_DESC"/>
         </SizeDesc>
         <ColorCode>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/COLOR_CODE"/>
         </ColorCode>
         <ColorDesc>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/COLOR_DESC"/>
         </ColorDesc>
         <ConsignmentCode>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CONSIGNMENT_CODE"/>
         </ConsignmentCode>
         <CurTicketPriceDollars>
            <xsl:value-of select="format-number(/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CUR_TKT_PRICE_DOL,&quot;###0.00&quot;)"/>
         </CurTicketPriceDollars>
         <OwnedOrigPctOff>
            <xsl:value-of select="/Query/PriceStatusOutputCollection/PriceStatusOutput/OWNED_ORIG_PCT_OFF"/>
         </OwnedOrigPctOff>
         <CurOwnedRetailDollars>
            <xsl:value-of select="format-number(/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CUR_OWN_RETAIL_DOL,&quot;###0.00&quot;)"/>
         </CurOwnedRetailDollars>
         <CostAmountDollars>
            <xsl:value-of select="format-number(/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/COST_AMOUNT_DOL,&quot;###0.00&quot;)"/>
         </CostAmountDollars>
         <CompareAtPrice>
            <xsl:value-of select="format-number(/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/COMPARE_AT_AMT_DOL,&quot;###0.00&quot;)"/>
         </CompareAtPrice>
         <CatalogCode>
            <xsl:value-of select="/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CATALOG_CODE"/>
         </CatalogCode>
         <OrigOwnRtlDol>
            <xsl:value-of select="format-number(/Query/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/ORIG_OWN_RTL_DOL,&quot;###0.00&quot;)"/>
         </OrigOwnRtlDol>
         <xsl:for-each select="/Query/PriceStatusOutputCollection/PriceStatusOutput">
            <xsl:choose>
               <xsl:when test="FUTURE_PERM = &quot;N&quot;">
                  <OrigTktRtlDol>
                     <xsl:value-of select="format-number(TICKET_RETAIL_DOL,&quot;###0.00&quot;)"/>
                  </OrigTktRtlDol>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <EffectiveDate>
            <xsl:value-of select="/Query/PriceStatusOutputCollection/PriceStatusOutput/EFFECTIVE_DATE"/>
         </EffectiveDate>
         <xsl:for-each select="/Query/PriceStatusOutputCollection/PriceStatusOutput">
            <xsl:choose>
               <xsl:when test="FUTURE_PERM = &quot;Y&quot;">
                  <PermPrice>
                     <Price>
                        <xsl:value-of select="TICKET_RETAIL_DOL"/>
                     </Price>
                     <!-- StartDate>
                        <xsl:value-of select="xp20:format-dateTime(EFFECTIVE_DATE,&quot;[Y0001]-[M01]-[D01]&quot;)"/>
                     </StartDate>
                     <StartTime>
                        <xsl:value-of select="xp20:format-dateTime(EFFECTIVE_DATE,&quot;[H01]:[m01]:[s01]&quot;)"/>
                     </StartTime> -->
                     <RegionTypeCode>
                        <xsl:value-of select="REGION_TYPE_CODE"/>
                     </RegionTypeCode>
                     <PriceTypeCode>
                        <xsl:value-of select="PRICE_TYPE_CODE"/>
                     </PriceTypeCode>
                     <PriceStatus>
                        <xsl:value-of select="PRICE_STATUS"/>
                     </PriceStatus>
                     <ReqReasonNo>
                        <xsl:value-of select="REQ_REASON_NO"/>
                     </ReqReasonNo>
                     <OwnedOrigPctOff>
                        <xsl:value-of select="OWNED_ORIG_PCT_OFF"/>
                     </OwnedOrigPctOff>
                  </PermPrice>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
      </RetrieveByIDandChainResponse>
   </xsl:template>
</xsl:stylesheet>