<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsi xsl top tns plt wsdl xsd ns2 ns0 msg_in_out ns1 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/StoreInfoService" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/http/StoreInfo/RFSStoreInfo/StoreInfoService" xmlns:ns1="http://xmlns.hbc.com/CommonModules/StoreInfoService/Types" xmlns:ns2="http://xmlns.hbc.com/CommonModules/StoreInfoService/DataTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/StoreInfo/RFSStoreInfo/GetSaksStoreInfo" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetSaksStoreInfo" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <msg_in_out:StoreInfoResponse>
         <ns1:StoreInfoDataList>
            <xsl:for-each select="/Query/Result">
               <xsl:sort order="descending" select="STORE_NO"></xsl:sort>
               <ns1:StoreInfo>
                  <ns1:Chain>
                     <xsl:value-of select="normalize-space(CHAIN)"></xsl:value-of>
                  </ns1:Chain>
                  <ns1:StoreNum>
                     <xsl:value-of select="format-number(STORE_NO,&quot;###000&quot;)"></xsl:value-of>
                  </ns1:StoreNum>
                  <ns1:ABBR2>
                     <xsl:value-of select="normalize-space(ABBR_2)"></xsl:value-of>
                  </ns1:ABBR2>
                  <ns1:ABBR3>
                     <xsl:value-of select="normalize-space(ABBR_3)"></xsl:value-of>
                  </ns1:ABBR3>
                  <ns1:ABBR8>
                     <xsl:value-of select="normalize-space(ABBR_8)"></xsl:value-of>
                  </ns1:ABBR8>
                  <ns1:StoreName>
                     <xsl:value-of select="normalize-space(STORE_NAME)"></xsl:value-of>
                  </ns1:StoreName>
                  <ns1:TypeCode>
                     <xsl:value-of select="normalize-space(TYPE_CODE)"></xsl:value-of>
                  </ns1:TypeCode>
                  <ns1:StatusCode>
                     <xsl:value-of select="normalize-space(STATUS_CODE)"></xsl:value-of>
                  </ns1:StatusCode>
                  <ns1:OpenDate>
                     <xsl:value-of select="normalize-space(OPEN_DATE)"></xsl:value-of>
                  </ns1:OpenDate>
                  <ns1:CloseDate>
                     <xsl:value-of select="normalize-space(CLOSE_DATE)"></xsl:value-of>
                  </ns1:CloseDate>
                  <ns1:ActivityDate>
                     <xsl:value-of select="normalize-space(ACTIVITY_DATE)"></xsl:value-of>
                  </ns1:ActivityDate>
                  <ns1:TimeZone>
                     <xsl:value-of select="normalize-space(TIME_ZONE)"></xsl:value-of>
                  </ns1:TimeZone>
                  <ns1:ORGRegion>
                     <xsl:value-of select="normalize-space(ORG_REGION)"></xsl:value-of>
                  </ns1:ORGRegion>
                  <ns1:GEORegion>
                     <xsl:value-of select="normalize-space(GEO_REGION)"></xsl:value-of>
                  </ns1:GEORegion>
                  <ns1:Address1>
                     <xsl:value-of select="normalize-space(ADDRESS_LINE_1)"></xsl:value-of>
                  </ns1:Address1>
                  <ns1:Address2>
                     <xsl:value-of select="normalize-space(ADDRESS_LINE_2)"></xsl:value-of>
                  </ns1:Address2>
                  <ns1:City>
                     <xsl:value-of select="normalize-space(CITY)"></xsl:value-of>
                  </ns1:City>
                  <ns1:State>
                     <xsl:value-of select="normalize-space(STATE)"></xsl:value-of>
                  </ns1:State>
                  <ns1:ZipcodeNo>
                     <xsl:value-of select="normalize-space(ZIPCODE_NO)"></xsl:value-of>
                  </ns1:ZipcodeNo>
                  <ns1:PhoneNo>
                     <xsl:value-of select="normalize-space(PHONE_NO)"></xsl:value-of>
                  </ns1:PhoneNo>
                  <ns1:Store4Digit>
                     <xsl:value-of select="normalize-space(STORE_NO_4_DIGIT)"></xsl:value-of>
                  </ns1:Store4Digit>
                  <ns1:FaxNumber>
                     <xsl:value-of select="normalize-space(FAX_NUMBER)"></xsl:value-of>
                  </ns1:FaxNumber>
                  <ns1:CurrencyCode>
                     <xsl:value-of select="normalize-space(CURRENCY_CODE)"></xsl:value-of>
                  </ns1:CurrencyCode>
                  <ns1:Lang>
                     <xsl:value-of select="normalize-space(LANG)"></xsl:value-of>
                  </ns1:Lang>
                  <ns1:LocalityCode>
                     <xsl:value-of select="normalize-space(LOCALITY_CODE)"></xsl:value-of>
                  </ns1:LocalityCode>
                  <ns1:StoreClass>
                     <xsl:value-of select="normalize-space(STORE_CLASS)"></xsl:value-of>
                  </ns1:StoreClass>
                  <ns1:FullFillPriority>
                     <xsl:value-of select="normalize-space(FULFILLMENT_PRIORITY)"></xsl:value-of>
                  </ns1:FullFillPriority>
                  <ns1:PickUPEligibleIND>
                     <xsl:value-of select="normalize-space(PICKUP_ELIGIBLE_IND)"></xsl:value-of>
                  </ns1:PickUPEligibleIND>
                  <ns1:ShipFromStore>
                     <xsl:value-of select="normalize-space(SHIP_FROM_STORE)"></xsl:value-of>
                  </ns1:ShipFromStore>
                  <ns1:ManagerEmail>
                     <xsl:value-of select="normalize-space(MANAGER_EMAIL)"></xsl:value-of>
                  </ns1:ManagerEmail>
                  <ns1:LocaleCode>
                     <xsl:value-of select="normalize-space(LOCALE_CODE)"></xsl:value-of>
                  </ns1:LocaleCode>
                  <ns1:CountryID>
                     <xsl:value-of select="normalize-space(COUNTRY_ID)"></xsl:value-of>
                  </ns1:CountryID>
                  <ns1:StoreStatus>
                     <xsl:value-of select="normalize-space(STORE_STATUS)"></xsl:value-of>
                  </ns1:StoreStatus>
                  <ns1:severity></ns1:severity>
                  <ns1:ErrorCode></ns1:ErrorCode>
                  <ns1:ErrorMessage></ns1:ErrorMessage>
               </ns1:StoreInfo>
            </xsl:for-each>
         </ns1:StoreInfoDataList>
      </msg_in_out:StoreInfoResponse>
   </xsl:template>
</xsl:stylesheet>