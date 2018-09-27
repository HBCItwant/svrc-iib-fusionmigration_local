<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:prom="http://www.xmln.saksinc.com/CommonModules/PromoPrices" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:client="http://xmlns.saksinc.com/CommonModules/PromoPrices" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl prom plnk client xsd wsdl bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <prom:PromoPriceRequest>
         <prom:Chain>
            <xsl:value-of select="substring-before(substring-after(translate(/prom:PromoPriceRequest/prom:RESTInput, 'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;CHAIN=&quot;),&quot;&amp;&quot;)"/>
         </prom:Chain>
         <prom:Store>
            <xsl:value-of select="substring-before(substring-after(translate(/prom:PromoPriceRequest/prom:RESTInput, 'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;STORE=&quot;),&quot;&amp;&quot;)"/>
         </prom:Store>
         <prom:UPC>
            <xsl:value-of select="substring-before(substring-after(translate(/prom:PromoPriceRequest/prom:RESTInput, 'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;UPC=&quot;),&quot;&amp;&quot;)"/>
         </prom:UPC>
         <xsl:if test="contains(translate(/prom:PromoPriceRequest/prom:RESTInput, 'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;EVENTNUM=&quot;)">
            <prom:EventNum>
               <xsl:value-of select="substring-before(substring-after(translate(/prom:PromoPriceRequest/prom:RESTInput, 'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;EVENTNUM=&quot;),&quot;&amp;&quot;)"/>
            </prom:EventNum>
         </xsl:if>
         <xsl:if test="contains(translate(/prom:PromoPriceRequest/prom:RESTInput, 'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;FUTUREPROMODATE=&quot;)">
            <prom:FuturePromoDate>
               <xsl:value-of select="substring-before(substring-after(translate(/prom:PromoPriceRequest/prom:RESTInput, 'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),&quot;FUTUREPROMODATE=&quot;),&quot;&amp;&quot;)"/>
            </prom:FuturePromoDate>
         </xsl:if>
      </prom:PromoPriceRequest>
   </xsl:template>
</xsl:stylesheet>