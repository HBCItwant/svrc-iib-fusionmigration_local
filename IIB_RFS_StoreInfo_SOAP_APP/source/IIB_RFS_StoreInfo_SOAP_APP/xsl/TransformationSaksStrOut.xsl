<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetSaksStoreInfo" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/StoreInfo/RFSStoreInfo/GetSaksStoreInfo" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://xmlns.hbc.com/CommonModules/StoreInfoService/DataTypes" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/http/StoreInfo/RFSStoreInfo/StoreInfoService" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/StoreInfoService" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://xmlns.hbc.com/CommonModules/StoreInfoService/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl top tns plt wsdl xsd ns2 ns0 msg_in_out ns1 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <msg_in_out:StoreInfoResponse>
         <ns1:StoreInfoDataList>
            <xsl:for-each select="/Query/Result">
               <xsl:sort select="STORE_NO" order="descending"/>
               <ns1:StoreInfo>
                  <ns1:Chain>
                     <xsl:value-of select="normalize-space(CHAIN)"/>
                  </ns1:Chain>
                  <ns1:StoreNum>
                     <xsl:value-of select="format-number(STORE_NO,&quot;###000&quot;)"/>
                  </ns1:StoreNum>
                  <ns1:ABBR2>
                     <xsl:value-of select="normalize-space(ABBR_2)"/>
                  </ns1:ABBR2>
                  <ns1:ABBR3>
                     <xsl:value-of select="normalize-space(ABBR_3)"/>
                  </ns1:ABBR3>
                  <ns1:ABBR8>
                     <xsl:value-of select="normalize-space(ABBR_8)"/>
                  </ns1:ABBR8>
                  <ns1:StoreName>
                     <xsl:value-of select="normalize-space(STORE_NAME)"/>
                  </ns1:StoreName>
                  <ns1:TypeCode>
                     <xsl:value-of select="normalize-space(TYPE_CODE)"/>
                  </ns1:TypeCode>
                  <ns1:StatusCode>
                     <xsl:value-of select="normalize-space(STATUS_CODE)"/>
                  </ns1:StatusCode>
                  <ns1:OpenDate>
                     <xsl:value-of select="normalize-space(OPEN_DATE)"/>
                  </ns1:OpenDate>
                  <ns1:CloseDate>
                     <xsl:value-of select="normalize-space(CLOSE_DATE)"/>
                  </ns1:CloseDate>
                  <ns1:ActivityDate>
                     <xsl:value-of select="normalize-space(ACTIVITY_DATE)"/>
                  </ns1:ActivityDate>
                  <ns1:TimeZone>
                     <xsl:value-of select="normalize-space(TIME_ZONE)"/>
                  </ns1:TimeZone>
                  <ns1:ORGRegion>
                     <xsl:value-of select="normalize-space(ORG_REGION)"/>
                  </ns1:ORGRegion>
                  <ns1:GEORegion>
                     <xsl:value-of select="normalize-space(GEO_REGION)"/>
                  </ns1:GEORegion>
                  <ns1:Address1>
                     <xsl:value-of select="normalize-space(ADDRESS_LINE_1)"/>
                  </ns1:Address1>
                  <ns1:Address2>
                     <xsl:value-of select="normalize-space(ADDRESS_LINE_2)"/>
                  </ns1:Address2>
                  <ns1:City>
                     <xsl:value-of select="normalize-space(CITY)"/>
                  </ns1:City>
                  <ns1:State>
                     <xsl:value-of select="normalize-space(STATE)"/>
                  </ns1:State>
                  <ns1:ZipcodeNo>
                     <xsl:value-of select="normalize-space(ZIPCODE_NO)"/>
                  </ns1:ZipcodeNo>
                  <ns1:PhoneNo>
                     <xsl:value-of select="normalize-space(PHONE_NO)"/>
                  </ns1:PhoneNo>
                  <ns1:Store4Digit>
                     <xsl:value-of select="normalize-space(STORE_NO_4_DIGIT)"/>
                  </ns1:Store4Digit>
                  <ns1:FaxNumber>
                     <xsl:value-of select="normalize-space(FAX_NUMBER)"/>
                  </ns1:FaxNumber>
                  <ns1:CurrencyCode>
                     <xsl:value-of select="normalize-space(CURRENCY_CODE)"/>
                  </ns1:CurrencyCode>
                  <ns1:Lang>
                     <xsl:value-of select="normalize-space(LANG)"/>
                  </ns1:Lang>
                  <ns1:LocalityCode>
                     <xsl:value-of select="normalize-space(LOCALITY_CODE)"/>
                  </ns1:LocalityCode>
                  <ns1:StoreClass>
                     <xsl:value-of select="normalize-space(STORE_CLASS)"/>
                  </ns1:StoreClass>
                  <ns1:FullFillPriority>
                     <xsl:value-of select="normalize-space(FULFILLMENT_PRIORITY)"/>
                  </ns1:FullFillPriority>
                  <ns1:PickUPEligibleIND>
                     <xsl:value-of select="normalize-space(PICKUP_ELIGIBLE_IND)"/>
                  </ns1:PickUPEligibleIND>
                  <ns1:ShipFromStore>
                     <xsl:value-of select="normalize-space(SHIP_FROM_STORE)"/>
                  </ns1:ShipFromStore>
                  <ns1:ManagerEmail>
                     <xsl:value-of select="normalize-space(MANAGER_EMAIL)"/>
                  </ns1:ManagerEmail>
                  <ns1:LocaleCode>
                     <xsl:value-of select="normalize-space(LOCALE_CODE)"/>
                  </ns1:LocaleCode>
                  <ns1:CountryID>
                     <xsl:value-of select="normalize-space(COUNTRY_ID)"/>
                  </ns1:CountryID>
                  <ns1:StoreStatus>
                     <xsl:value-of select="normalize-space(STORE_STATUS)"/>
                  </ns1:StoreStatus>
                  <ns1:severity/>
                  <ns1:ErrorCode/>
                  <ns1:ErrorMessage/>
               </ns1:StoreInfo>
            </xsl:for-each>
         </ns1:StoreInfoDataList>
      </msg_in_out:StoreInfoResponse>
   </xsl:template>
</xsl:stylesheet>