<#import "template.ftl" as layout>
<title>${msg("applicationsHtmlTitle")}</title>
<@layout.mainLayout active='applications' bodyClass='applications'; section>

    <#--  <div class="row">
        <p>${msg("applicationsHtmlTitle")}</p>
    </div>  -->
    <form action="${url.applicationsUrl}" method="post">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <input type="hidden" id="referrer" name="referrer" value="${stateChecker}">
            <div class="application">
                <#list applications.applications as application>
                    <#if (application.effectiveUrl?has_content)&&(application.effectiveUrl!="${url.accountUrl}")>
                        <div  class="cell col-xs-3 col-md-3 col-lg-2" onclick="window.open('${application.effectiveUrl}','_self');">
                            <div class="image">
                                <div >
                                    <img src="${url.resourcesPath}/img/${application.client.clientId}.png" onerror="this.src='${url.resourcesPath}/img/logo.png;this.οnerrοr=null'" />
                                </div
                            </div>
                            <div class="appname"><#if application.client.name?has_content>${advancedMsg(application.client.name)}<#else>${application.client.clientId}</#if></div>
                        </div>    
                    </#if>
                </#list>
            </div>
    </form>

</@layout.mainLayout>