<#assign chartType=chartType!"pie"/>    <#-- (line|bar|pie) default: line -->
<#assign library=chartLibrary!"chart"/>
<#assign datasets=chartDatasets?number!1 />

<#if bestSellingProducts?has_content>
    <#if chartType == "pie" || chartType == "bar">
        <@section title="${uiLabelMap.ProductBestSellingProducts}">        
            <#list bestSellingProducts.keySet() as dateIntervals>
                <#assign dateBeginText = dateIntervals.getDateFormatter().format(dateIntervals.getDateBegin()) />
                <#assign dateEndText = dateIntervals.getDateFormatter().format(dateIntervals.getDateEnd()) />
                <@chart title="${dateBeginText} - ${dateEndText}" type=chartType library=library xlabel=xlabel!"" ylabel=ylabel!"" label1=label1!"" label2=label2!"">                
                    <#assign currData = bestSellingProducts.get(dateIntervals) />                
                    <#if currData?has_content> 
                        <#if datasets == 1>             
                            <#list currData as bestSetllingProduct>     
                                <@chartdata value="${bestSetllingProduct.qtyOrdered!0}" title="${rawString(bestSetllingProduct.productName)!bestSetllingProduct.productId}"/>
                            </#list>                           
                        </#if>
                    </#if>
                </@chart>
            </#list>
        </@section>
    <#elseif chartType == "line">
        <@commonMsg type="error">${uiLabelMap.CommonUnsupported}</@commonMsg>
    <#else>
        <@commonMsg type="error">${uiLabelMap.CommonUnsupported}</@commonMsg>
    </#if>
<#else>
    <@commonMsg type="result-norecord"/>            
</#if>