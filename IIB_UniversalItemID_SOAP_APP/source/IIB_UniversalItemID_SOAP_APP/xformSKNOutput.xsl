<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/RetrieveItemInfoBySKN" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/CommonModules/UniversalItemID/RetrieveItemInfoBySKN" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://xmlns.saksinc.com/CommonModules/UniversalItemID/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:client="http://xmlns.saksinc.com/CommonModules/UniversalItemID/RetrieveInfoBySKN" exclude-result-prefixes="xsi xsl db plt wsdl tns xsd plnk ns0 client xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <client:RetrieveInfoBySKNResponse>
         <ns0:SSN>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SSN"/>
         </ns0:SSN>
         <ns0:SKN>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SKN_NO"/>
         </ns0:SKN>
         <ns0:UPC>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/UPC"/>
         </ns0:UPC>
         <ns0:SVS>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SVS"/>
         </ns0:SVS>
         <ns0:FashionStyleNo>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/FASHION_STYLE_NO"/>
         </ns0:FashionStyleNo>
         <ns0:VendorStyle>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/VENDOR_STYLE_20CH"/>
         </ns0:VendorStyle>
         <ns0:DeptNo>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/DEPT_NO"/>
         </ns0:DeptNo>
         <ns0:ClassNo>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CLASS_NO"/>
         </ns0:ClassNo>
         <ns0:MfgNo>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/MFG_NO"/>
         </ns0:MfgNo>
         <ns0:ItemDescShort>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/ITEM_DESC_SHORT"/>
         </ns0:ItemDescShort>
         <ns0:ItemDescLong>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/ITEM_DESC_LONG"/>
         </ns0:ItemDescLong>
         <ns0:SeasonCde>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SEASON_TYPE_CODE"/>
         </ns0:SeasonCde>
         <ns0:SizeCode>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SIZE_CODE"/>
         </ns0:SizeCode>
         <ns0:SizeDesc>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/SIZE_DESC"/>
         </ns0:SizeDesc>
         <ns0:ColorCode>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/COLOR_CODE"/>
         </ns0:ColorCode>
         <ns0:ColorDesc>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/COLOR_DESC"/>
         </ns0:ColorDesc>
         <ns0:ConsignmentCode>
            <xsl:value-of select="/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CONSIGNMENT_CODE"/>
         </ns0:ConsignmentCode>
         <ns0:CurTicketPriceDollars>
            <xsl:value-of select="format-number(/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CUR_TKT_PRICE_DOL,'###0.00')"/>
         </ns0:CurTicketPriceDollars>
         <ns0:CurOwnedRetailDollars>
            <xsl:value-of select="format-number(/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/CUR_OWN_RETAIL_DOL,'###0.00')"/>
         </ns0:CurOwnedRetailDollars>
         <ns0:CostAmountDollars>
            <xsl:value-of select="format-number(/RetrieveItemInfoBySKNOutputCollection/RetrieveItemInfoBySKNOutput/COST_AMOUNT_DOL,'###0.00')"/>
         </ns0:CostAmountDollars>
      </client:RetrieveInfoBySKNResponse>
   </xsl:template>
</xsl:stylesheet>