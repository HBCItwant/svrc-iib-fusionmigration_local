<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/GetLTItemInfoBySVS" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/UID/UniversalItemID/GetLTItemInfoBySVS" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns11="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveInfoBySSN" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plt wsdl db tns xsd plnk ns11 ns0 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns11:RetrieveInfoBySSNResponse>
         <xsl:for-each select="/GetLTItemInfoBySVSOutputCollection/GetLTItemInfoBySVSOutput">
            <ns11:RetrieveInfoBySSNOutput>
               <ns0:SSN/>
               <ns0:SKN>
                  <xsl:value-of select="normalize-space(SKN_NO)"/>
               </ns0:SKN>
               <ns0:UPC>
                  <xsl:value-of select="normalize-space(UPC)"/>
               </ns0:UPC>
               <ns0:SVS>
                  <xsl:value-of select="normalize-space(SVS)"/>
               </ns0:SVS>
               <ns0:Chain/>
               <ns0:FashionStyleNo>
                  <xsl:value-of select="normalize-space(FASHION_STYLE_NO)"/>
               </ns0:FashionStyleNo>
               <ns0:VendorStyle>
                  <xsl:value-of select="normalize-space(VENDOR_STYLE)"/>
               </ns0:VendorStyle>
               <ns0:DeptNo>
                  <xsl:value-of select="normalize-space(DEPT_NO)"/>
               </ns0:DeptNo>
               <ns0:ClassNo>
                  <xsl:value-of select="normalize-space(CLASS_NO)"/>
               </ns0:ClassNo>
               <ns0:MfgName>
                  <xsl:value-of select="normalize-space(MFG_NAME)"/>
               </ns0:MfgName>
               <ns0:MfgNo>
                  <xsl:value-of select="normalize-space(MFG_NO)"/>
               </ns0:MfgNo>
               <ns0:ItemDescShort>
                  <xsl:value-of select="normalize-space(ITEM_DESC_SHORT)"/>
               </ns0:ItemDescShort>
               <ns0:ItemDescLong>
                  <xsl:value-of select="normalize-space(ITEM_DESC_LONG)"/>
               </ns0:ItemDescLong>
               <ns0:PriceStatus/>
               <ns0:PriceTypeCode/>
               <ns0:ReqReasonCode/>
               <ns0:SeasonCde>
                  <xsl:value-of select="normalize-space(SEASON_TYPE_CODE)"/>
               </ns0:SeasonCde>
               <ns0:SizeCode>
                  <xsl:value-of select="normalize-space(SIZE_CODE)"/>
               </ns0:SizeCode>
               <ns0:SizeDesc>
                  <xsl:value-of select="normalize-space(SIZE_DESC)"/>
               </ns0:SizeDesc>
               <ns0:ColorCode>
                  <xsl:value-of select="normalize-space(COLOR_CODE)"/>
               </ns0:ColorCode>
               <ns0:ColorDesc>
                  <xsl:value-of select="normalize-space(COLOR_DESC)"/>
               </ns0:ColorDesc>
               <ns0:ConsignmentCode>
                  <xsl:value-of select="normalize-space(CONSIGNMENT_CODE)"/>
               </ns0:ConsignmentCode>
               <ns0:CurTicketPriceDollars>
                  <xsl:value-of select="format-number(normalize-space(CUR_TKT_PRICE_DOL),&quot;###0.00&quot;)"/>
               </ns0:CurTicketPriceDollars>
               <ns0:CurOwnedRetailDollars>
                  <xsl:value-of select="format-number(normalize-space(CUR_OWN_RETAIL_DOL),&quot;###0.00&quot;)"/>
               </ns0:CurOwnedRetailDollars>
               <ns0:CostAmountDollars>
                  <xsl:value-of select="format-number(normalize-space(COST_AMOUNT_DOL),&quot;###0.00&quot;)"/>
               </ns0:CostAmountDollars>
            </ns11:RetrieveInfoBySSNOutput>
         </xsl:for-each>
      </ns11:RetrieveInfoBySSNResponse>
   </xsl:template>
</xsl:stylesheet>