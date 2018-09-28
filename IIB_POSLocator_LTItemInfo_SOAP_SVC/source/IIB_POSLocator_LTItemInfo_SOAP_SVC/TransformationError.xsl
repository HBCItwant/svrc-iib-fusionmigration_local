<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://xmlns.saksinc.com/Locator/POSLocateItemInfo" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://www.xmlns.saksinc.com/Locator/POSLocateItemInfo/Types" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:client="http://xmlns.saksinc.com/Locator/POSLocatorItemInfo/ItemInformation" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 plnk ns2 client xsd wsdl xp20 bpws aia mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns1:ItemInfoResponse>
         <ns1:Header>
            <ns2:Chain>
               <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:Chain"/>
            </ns2:Chain>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:CountryCode">
               <ns2:CountryCode>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:CountryCode"/>
               </ns2:CountryCode>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:StoreNumber">
               <ns2:StoreNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:StoreNumber"/>
               </ns2:StoreNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:OperatorNumber">
               <ns2:OperatorNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:OperatorNumber"/>
               </ns2:OperatorNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:TerminalNumber">
               <ns2:TerminalNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:TerminalNumber"/>
               </ns2:TerminalNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:POSTransactionNumber">
               <ns2:POSTransactionNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:POSTransactionNumber"/>
               </ns2:POSTransactionNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:POSSubTransNumber">
               <ns2:POSSubTransNumber>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:POSSubTransNumber"/>
               </ns2:POSSubTransNumber>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:LanguageIndicator">
               <ns2:LanguageIndicator>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:LanguageIndicator"/>
               </ns2:LanguageIndicator>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:MessageType">
               <ns2:MessageType>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:MessageType"/>
               </ns2:MessageType>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:VersionInfo">
               <ns2:VersionInfo>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:VersionInfo"/>
               </ns2:VersionInfo>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:MsgLength">
               <ns2:MsgLength>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:MsgLength"/>
               </ns2:MsgLength>
            </xsl:if>
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/ns2:Reserved">
               <ns2:Reserved>
                  <xsl:value-of select="/ns1:ItemInfoRequest/ns1:Header/ns2:Reserved"/>
               </ns2:Reserved>
            </xsl:if>
         </ns1:Header>
         <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/Checkpoint = 'CheckInputs'">
           
         <ns1:StatusInformation>
            <ns2:StatusCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0001</xsl:text>
            </ns2:StatusCode>
            <ns2:ErrorCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0001</xsl:text>
            </ns2:ErrorCode>
            <ns2:ErrorMessage>
               <xsl:text disable-output-escaping="no">Invalid Inputs: Check your inputs and try again</xsl:text>
            </ns2:ErrorMessage>
         </ns1:StatusInformation>
          </xsl:if>
          
          <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/Checkpoint = 'ValidChainInput'">
           
         <ns1:StatusInformation>
            <ns2:StatusCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0010</xsl:text>
            </ns2:StatusCode>
            <ns2:ErrorCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0010</xsl:text>
            </ns2:ErrorCode>
            <ns2:ErrorMessage>
               <xsl:text disable-output-escaping="no">Enter required valid chain number.</xsl:text>
            </ns2:ErrorMessage>
         </ns1:StatusInformation>
          </xsl:if>
          
             
          <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/Checkpoint = 'ItemnotinRFS'">
           
         <ns1:StatusInformation>
            <ns2:StatusCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0011</xsl:text>
            </ns2:StatusCode>
            <ns2:ErrorCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0011</xsl:text>
            </ns2:ErrorCode>
            <ns2:ErrorMessage>
               <xsl:text disable-output-escaping="no">Invalid SKN/UPC/SSN. This Item is not present in RFS.</xsl:text>
            </ns2:ErrorMessage>
         </ns1:StatusInformation>
          </xsl:if>
          
             <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/Checkpoint = 'SVSError'">
           
         <ns1:StatusInformation>
            <ns2:StatusCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0005</xsl:text>
            </ns2:StatusCode>
            <ns2:ErrorCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0005</xsl:text>
            </ns2:ErrorCode>
            <ns2:ErrorMessage>
               <xsl:text disable-output-escaping="no">There was an error while invoking UniversalITemID-retrieveInfoBySSN.</xsl:text>
            </ns2:ErrorMessage>
         </ns1:StatusInformation>
          </xsl:if>
          
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/Checkpoint = 'AssignInValidItemIDError'">
           
         <ns1:StatusInformation>
            <ns2:StatusCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0002</xsl:text>
            </ns2:StatusCode>
            <ns2:ErrorCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0002</xsl:text>
            </ns2:ErrorCode>
            <ns2:ErrorMessage>
               <xsl:text disable-output-escaping="no">Invalid SKN/UPC number.</xsl:text>
            </ns2:ErrorMessage>
         </ns1:StatusInformation>
          </xsl:if>
          
              <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/Checkpoint = 'AssignNotLocatorOrder'">
           
         <ns1:StatusInformation>
            <ns2:StatusCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0003</xsl:text>
            </ns2:StatusCode>
            <ns2:ErrorCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0003</xsl:text>
            </ns2:ErrorCode>
            <ns2:ErrorMessage>
               <xsl:text disable-output-escaping="no">Merchandise unavailable through Locator for this department.</xsl:text>
            </ns2:ErrorMessage>
         </ns1:StatusInformation>
          </xsl:if>
          
            <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/Checkpoint = 'AssignInvalidInp'">
           
         <ns1:StatusInformation>
            <ns2:StatusCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0008</xsl:text>
            </ns2:StatusCode>
            <ns2:ErrorCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0008</xsl:text>
            </ns2:ErrorCode>
            <ns2:ErrorMessage>
               <xsl:text disable-output-escaping="no">Enter required combination of Chain/Dept/Class/MFG/Vendor Style or Chain/Dept/Class/MFG or Chain/Dept/MFG/Vendor Style or Chain/Dept/Vendor Style.</xsl:text>
            </ns2:ErrorMessage>
         </ns1:StatusInformation>
          </xsl:if>
          
               <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/Checkpoint = 'AssignInValidDCMVSError'">
           
         <ns1:StatusInformation>
            <ns2:StatusCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0009</xsl:text>
            </ns2:StatusCode>
            <ns2:ErrorCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0009</xsl:text>
            </ns2:ErrorCode>
            <ns2:ErrorMessage>
               <xsl:text disable-output-escaping="no">Invalid Dept/Class/MFG/VendorStyle number.</xsl:text>
            </ns2:ErrorMessage>
         </ns1:StatusInformation>
          </xsl:if>
          
           <xsl:if test="/ns1:ItemInfoRequest/ns1:Header/Checkpoint = 'AssignNotLocatorOrder1'">
           
         <ns1:StatusInformation>
            <ns2:StatusCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0003</xsl:text>
            </ns2:StatusCode>
            <ns2:ErrorCode>
               <xsl:text disable-output-escaping="no">POSItemInfo-0003</xsl:text>
            </ns2:ErrorCode>
            <ns2:ErrorMessage>
               <xsl:text disable-output-escaping="no">Merchandise unavailable through Locator for this department.</xsl:text>
            </ns2:ErrorMessage>
         </ns1:StatusInformation>
          </xsl:if>
          
          
          
      </ns1:ItemInfoResponse>
   </xsl:template>
</xsl:stylesheet>