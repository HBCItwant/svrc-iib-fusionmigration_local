<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/StoreInfo/RFSStoreInfo/GetBayStoreInfo" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/GetBayStoreInfo" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://xmlns.hbc.com/CommonModules/StoreInfoService/DataTypes" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/http/StoreInfo/RFSStoreInfo/StoreInfoService" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:msg_in_out="http://xmlns.hbc.com/CommonModules/StoreInfoService" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://xmlns.hbc.com/CommonModules/StoreInfoService/Types" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns top plt wsdl xsd ns2 ns0 msg_in_out ns1 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <msg_in_out:StoreInfoResponse>
         <ns1:StoreInfoDataList>
            <xsl:for-each select="/top:RfStoreCollection/top:RfStore">
               <xsl:sort select="top:storeNo" order="descending"/>
               <ns1:StoreInfo>
                  <ns1:Chain>
                     <xsl:value-of select="normalize-space(top:chain)"/>
                  </ns1:Chain>
                  <ns1:StoreNum>
                     <xsl:value-of select="format-number(top:storeNo,&quot;###000&quot;)"/>
                  </ns1:StoreNum>
                  <ns1:ABBR2>
                     <xsl:value-of select="normalize-space(top:abbr2)"/>
                  </ns1:ABBR2>
                  <ns1:ABBR3>
                     <xsl:value-of select="normalize-space(top:abbr3)"/>
                  </ns1:ABBR3>
                  <ns1:ABBR8>
                     <xsl:value-of select="normalize-space(top:abbr8)"/>
                  </ns1:ABBR8>
                  <ns1:StoreName>
                     <xsl:value-of select="normalize-space(top:storeName)"/>
                  </ns1:StoreName>
                  <ns1:TypeCode>
                     <xsl:value-of select="normalize-space(top:typeCode)"/>
                  </ns1:TypeCode>
                  <ns1:StatusCode>
                     <xsl:value-of select="normalize-space(top:statusCode)"/>
                  </ns1:StatusCode>
                  <ns1:OpenDate>
                     <xsl:value-of select="normalize-space(top:openDate)"/>
                  </ns1:OpenDate>
                  <ns1:CloseDate>
                     <xsl:value-of select="normalize-space(top:closeDate)"/>
                  </ns1:CloseDate>
                  <ns1:ActivityDate>
                     <xsl:value-of select="normalize-space(top:activityDate)"/>
                  </ns1:ActivityDate>
                  <ns1:TimeZone>
                     <xsl:value-of select="normalize-space(top:timeZone)"/>
                  </ns1:TimeZone>
                  <ns1:ORGRegion>
                     <xsl:value-of select="normalize-space(top:orgRegion)"/>
                  </ns1:ORGRegion>
                  <ns1:GEORegion>
                     <xsl:value-of select="normalize-space(top:geoRegion)"/>
                  </ns1:GEORegion>
                  <ns1:Address1>
                     <xsl:value-of select="normalize-space(top:addressLine1)"/>
                  </ns1:Address1>
                  <ns1:Address2>
                     <xsl:value-of select="normalize-space(top:addressLine2)"/>
                  </ns1:Address2>
                  <ns1:City>
                     <xsl:value-of select="normalize-space(top:city)"/>
                  </ns1:City>
                  <ns1:State>
                     <xsl:value-of select="normalize-space(top:state)"/>
                  </ns1:State>
                  <ns1:ZipcodeNo>
                     <xsl:value-of select="normalize-space(top:zipcodeNo)"/>
                  </ns1:ZipcodeNo>
                  <ns1:PhoneNo>
                     <xsl:value-of select="normalize-space(top:phoneNo)"/>
                  </ns1:PhoneNo>
                  <ns1:Store4Digit>
                     <xsl:value-of select="normalize-space(top:storeNo4_Digit)"/>
                  </ns1:Store4Digit>
                  <ns1:FaxNumber>
                     <xsl:value-of select="normalize-space(top:faxNumber)"/>
                  </ns1:FaxNumber>
                  <ns1:CurrencyCode>
                     <xsl:value-of select="normalize-space(top:currencyCode)"/>
                  </ns1:CurrencyCode>
                  <ns1:Lang>
                     <xsl:value-of select="normalize-space(top:lang)"/>
                  </ns1:Lang>
                  <ns1:LocalityCode>
                     <xsl:value-of select="normalize-space(top:localityCode)"/>
                  </ns1:LocalityCode>
                  <ns1:StoreClass>
                     <xsl:value-of select="normalize-space(top:storeClass)"/>
                  </ns1:StoreClass>
                  <ns1:FullFillPriority>
                     <xsl:value-of select="normalize-space(top:fulfillmentPriority)"/>
                  </ns1:FullFillPriority>
                  <ns1:PickUPEligibleIND>
                     <xsl:value-of select="normalize-space(top:pickupEligibleInd)"/>
                  </ns1:PickUPEligibleIND>
                  <ns1:ShipFromStore>
                     <xsl:value-of select="normalize-space(top:shipFromStore)"/>
                  </ns1:ShipFromStore>
                  <ns1:ManagerEmail>
                     <xsl:value-of select="normalize-space(top:managerEmail)"/>
                  </ns1:ManagerEmail>
                  <ns1:LocaleCode>
                     <xsl:value-of select="normalize-space(top:localeCode)"/>
                  </ns1:LocaleCode>
                  <ns1:CountryID>
                     <xsl:value-of select="normalize-space(top:countryId)"/>
                  </ns1:CountryID>
                  <ns1:StoreStatus>
                     <xsl:value-of select="normalize-space(top:storeStatus)"/>
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