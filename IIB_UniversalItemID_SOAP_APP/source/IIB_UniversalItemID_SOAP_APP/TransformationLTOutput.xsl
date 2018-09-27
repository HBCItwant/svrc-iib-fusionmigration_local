<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/GetLTPriceStatus" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/GetLTItemInfoByIDandChain" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:client="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveByIDandChain" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/UID/UniversalItemID/GetLTItemInfoByIDandChain" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/UID/UniversalItemID/GetLTPriceStatus" xmlns:ns2="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 db tns plt wsdl xsd ns1 client plnk ns2 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   
   <xsl:template match="/">
      <client:RetrieveByIDandChainResponse>
         <ns2:SSN/>
         <ns2:SKN>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/SKN_NO)"/>
         </ns2:SKN>
         <ns2:UPC>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/UPC)"/>
         </ns2:UPC>
         <ns2:SVS>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/SVS)"/>
         </ns2:SVS>
         <ns2:FashionStyleNo>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/FASHION_STYLE_NO)"/>
         </ns2:FashionStyleNo>
         <ns2:VendorNum>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/VENDOR_NO)"/>
         </ns2:VendorNum>
         <ns2:VendorStyle>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/VENDOR_STYLE_20CH)"/>
         </ns2:VendorStyle>
         <ns2:DMMName>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/DMM_NAME)"/>
         </ns2:DMMName>
         <ns2:DMMNo>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/DMM_NO)"/>
         </ns2:DMMNo>
         <ns2:GMMName>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/GMM_NAME)"/>
         </ns2:GMMName>
         <ns2:GMMNo>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/GMM_NO)"/>
         </ns2:GMMNo>
         <ns2:DeptNo>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/DEPT_NO)"/>
         </ns2:DeptNo>
         <ns2:DeptDesc>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/DEPT_DESC)"/>
         </ns2:DeptDesc>
         <ns2:ClassNo>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/CLASS_NO)"/>
         </ns2:ClassNo>
         <ns2:ClassDesc>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/CLASS_DESC)"/>
         </ns2:ClassDesc>
         <ns2:MfgName>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/MFG_NAME)"/>
         </ns2:MfgName>
         <ns2:MfgNo>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/MFG_NO)"/>
         </ns2:MfgNo>
         <ns2:ItemDescShort>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/ITEM_DESC_SHORT)"/>
         </ns2:ItemDescShort>
         <ns2:ItemDescLong>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/ITEM_DESC_LONG)"/>
         </ns2:ItemDescLong>
         <ns2:PriceStatus>
            <xsl:value-of select="normalize-space(/Query/GetLTPriceStatusOutputCollection/GetLTPriceStatusOutput/PRICE_STATUS)"/>
         </ns2:PriceStatus>
         <ns2:PriceTypeCode>
            <xsl:value-of select="normalize-space(/Query/GetLTPriceStatusOutputCollection/GetLTPriceStatusOutput/PRICE_TYPE_CODE)"/>
         </ns2:PriceTypeCode>
         <ns2:ReqReasonCode>
            <xsl:value-of select="/Query/GetLTPriceStatusOutputCollection/GetLTPriceStatusOutput/REQ_REASON_NO"/>
         </ns2:ReqReasonCode>
         <ns2:SeasonCde>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/SEASON_TYPE_CODE)"/>
         </ns2:SeasonCde>
         <ns2:SizeCode>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/SIZE_CODE)"/>
         </ns2:SizeCode>
         <ns2:SizeDesc>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/SIZE_DESC)"/>
         </ns2:SizeDesc>
         <ns2:ColorCode>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/COLOR_CODE)"/>
         </ns2:ColorCode>
         <ns2:ColorDesc>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/COLOR_DESC)"/>
         </ns2:ColorDesc>
         <ns2:ConsignmentCode>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/CONSIGNMENT_CODE)"/>
         </ns2:ConsignmentCode>
         <ns2:CurTicketPriceDollars>
            <xsl:value-of select="format-number(normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/CUR_TKT_PRICE_DOL),&quot;###0.00&quot;)"/>
         </ns2:CurTicketPriceDollars>
         <ns2:OwnedOrigPctOff>
            <xsl:value-of select="normalize-space(/Query/GetLTPriceStatusOutputCollection/GetLTPriceStatusOutput/OWNED_ORIG_PCT_OFF)"/>
         </ns2:OwnedOrigPctOff>
         <ns2:CurOwnedRetailDollars>
            <xsl:value-of select="format-number(normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/CUR_OWN_RETAIL_DOL),&quot;###0.00&quot;)"/>
         </ns2:CurOwnedRetailDollars>
         <ns2:CostAmountDollars>
            <xsl:value-of select="format-number(normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/COST_AMOUNT_DOL),&quot;###0.00&quot;)"/>
         </ns2:CostAmountDollars>
         <ns2:CompareAtPrice>
            <xsl:value-of select="format-number(normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/COMPARE_AT_AMT_DOL),&quot;###0.00&quot;)"/>
         </ns2:CompareAtPrice>
         <ns2:CatalogCode>
            <xsl:value-of select="normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/CATALOG_CODE)"/>
         </ns2:CatalogCode>
         <ns2:OrigOwnRtlDol>
            <xsl:value-of select="format-number(normalize-space(/Query/GetLTItemInfoByIDandChainOutputCollection/GetLTItemInfoByIDandChainOutput/ORIG_OWN_RTL_DOL),&quot;###0.00&quot;)"/>
         </ns2:OrigOwnRtlDol>
         <ns2:OrigTktRtlDol>
            <xsl:value-of select="format-number(normalize-space(/Query/GetLTPriceStatusOutputCollection/GetLTPriceStatusOutput/TICKET_RETAIL_DOL),&quot;###0.00&quot;)"/>
         </ns2:OrigTktRtlDol>
         <ns2:EffectiveDate>
            <xsl:value-of select="/Query/GetLTPriceStatusOutputCollection/GetLTPriceStatusOutput/EFFECTIVE_DATE"/>
         </ns2:EffectiveDate>
         <ns2:PermPrice>
            <ns2:Price/>
            <ns2:StartDate/>
            <ns2:StartTime/>
            <ns2:RegionTypeCode/>
            <ns2:PriceTypeCode/>
            <ns2:PriceStatus/>
            <ns2:ReqReasonNo/>
            <ns2:OwnedOrigPctOff/>
         </ns2:PermPrice>
         <ns2:PromoPrices>
            <ns2:PriceInfo>
               <ns2:PriceEffectiveDate/>
               <ns2:Price/>
               <ns2:TotalDisc/>
               <ns2:PromoID/>
               <ns2:PromoType/>
               <ns2:PromoAmount/>
               <ns2:PromoStartDate/>
               <ns2:PromoEndDate/>
               <ns2:PromoStartTime/>
               <ns2:PromoEndTime/>
               <ns2:DiscAmt/>
               <ns2:RcptTxt/>
               <ns2:OriginalPrice/>
               <ns2:PromoChangeType/>
               <ns2:Status/>
            </ns2:PriceInfo>
         </ns2:PromoPrices>
      </client:RetrieveByIDandChainResponse>
   </xsl:template>
</xsl:stylesheet>