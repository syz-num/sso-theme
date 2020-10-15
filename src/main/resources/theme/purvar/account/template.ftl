<#macro mainLayout active bodyClass>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width,initial-scale=0.5, minimum-scale=0.5, maximum-scale=1.0, user-scalable=no"/>
    <title>${msg("accountManagementTitle")}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico">
    <#if properties.stylesCommon?has_content>
        <#list properties.stylesCommon?split(' ') as style>
            <link href="${url.resourcesCommonPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script type="text/javascript" src="${url.resourcesPath}/${script}"></script>
        </#list>
    </#if>
    
</head>

<body class="admin-console user ${bodyClass}">
        
    <#--  <header class="navbar navbar-default navbar-pf navbar-main header">
        <nav class="navbar" role="navigation">
            <div class="navbar-header">
                <div class="container">
                    <h1 class="navbar-title">Keycloak</h1>
                </div>
            </div>
            <div class="navbar-collapse navbar-collapse-1">
                <div class="container">
                    <ul class="nav navbar-nav navbar-utility">
                        <#if realm.internationalizationEnabled>
                            <li>
                                <div class="kc-dropdown" id="kc-locale-dropdown">
                                    <a href="#" id="kc-current-locale-link">${locale.current}</a>
                                    <ul>
                                        <#list locale.supported as l>
                                            <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>
                                        </#list>
                                    </ul>
                                </div>
                            <li>
                        </#if>
                        <#if referrer?has_content && referrer.url?has_content><li><a href="${referrer.url}" id="referrer">${msg("backTo",referrer.name)}</a></li></#if>
                        <li><a href="${url.logoutUrl}">${msg("doSignOut")}</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>  -->
    <div>
        <#if message?has_content>
            <div class="alert alert-${message.type}">
                <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>
                <#if message.type=='error' ><span class="pficon pficon-error-circle-o"></span></#if>
                <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
            </div>
        </#if>
        <#nested "content">
    </div>
 
    <div class="main_nav_bottom">
        <nav class="navbar navbar-default navbar-fixed-bottom">
            <div class="navbar-bottom">
                <ul class="nav">
                    <li class="<#if active=='account'>active</#if>"><a  href="${url.accountUrl}">${msg("account")}</a></li>
                    <#if features.passwordUpdateSupported><li class="<#if active=='password'>active</#if>"><a  href="${url.passwordUrl}">${msg("password")}</a></li></#if>
                    <li class="<#if active=='sessions'>active</#if>"><a href="${url.sessionsUrl}">${msg("sessions")}</a></li>
                    <li class="<#if active=='applications'>active</#if>"><a href="${url.applicationsUrl}">${msg("applications")}</a></li> 
                </ul>
            </div>
        </nav>
    </div>
            
    <#--  <div class="navbar-bottom">
        <ul>
            <li class="<#if active=='account'>active</#if>"><a  href="${url.accountUrl}">${msg("account")}</a></li>
            <#if features.passwordUpdateSupported><li class="<#if active=='password'>active</#if>"><a  href="${url.passwordUrl}">${msg("password")}</a></li></#if>
            <li class="<#if active=='sessions'>active</#if>"><a href="${url.sessionsUrl}">${msg("sessions")}</a></li>
            <li class="<#if active=='applications'>active</#if>"><a href="${url.applicationsUrl}">${msg("applications")}</a></li> 
        </ul>
    </div>  -->
    


</body>
</html>
</#macro>