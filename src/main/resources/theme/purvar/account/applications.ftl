<#import "template.ftl" as layout>
<@layout.mainLayout active='applications' bodyClass='applications'; section>

    <div class="row">
        <p>${msg("applicationsHtmlTitle")}</p>
    </div>

    <form action="${url.applicationsUrl}" method="post">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <input type="hidden" id="referrer" name="referrer" value="${stateChecker}">
        <div class="container">
            <div class="application">
                <#list applications.applications as application>
                    <#if application.effectiveUrl?has_content>
                        <div  class="cell col-md-3 col-sm-3 col-xs-3" onclick="window.open('${application.effectiveUrl}','_self');">
                            <#--  <img src="${application.effectiveUrl}/favicon.ico" onerror="this.src='${url.resourcesPath}/img/5-3@2x.png; this.οnerrοr=null'" />  -->
                            <div class="appname"><#if application.client.name?has_content>${advancedMsg(application.client.name)}<#else>${application.client.clientId}</#if></div>
                        </div>    
                    </#if>
                </#list>
            </div>
        </div>
    </form>

</@layout.mainLayout>