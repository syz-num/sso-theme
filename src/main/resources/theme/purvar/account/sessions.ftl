<#import "template.ftl" as layout>
<title>${msg("sessionsHtmlTitle")}</title>
<@layout.mainLayout active='sessions' bodyClass='sessions'; section>

    <#--  <div class="row">
        <p>${msg("sessionsHtmlTitle")}</p>
    </div>  -->

    <table class="info">
        <thead>
        <tr>
            <td>${msg("ip")}</td>
            <#--  <td>${msg("started")}</td>  -->
            <td>${msg("lastAccess")}</td>
            <#--  <td>${msg("expires")}</td>  -->
            <td>${msg("clients")}</td>
        </tr>
        </thead>

        <tbody>
        <#list sessions.sessions as session>
            <tr>
                <td>${session.ipAddress}</td>
                <#--  <td>${session.started?datetime}</td>  -->
                <td>${session.lastAccess?datetime}</td>
                <#--  <td>${session.expires?datetime}</td>  -->
                <td>
                    <#list session.clients as client>
                        ${client.name}<br/>
                    </#list>
                </td>
            </tr>
        </#list>
        </tbody>

    </table>

    <form action="${url.sessionsUrl}" method="post" class="action">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <button id="logout-all-sessions" class="btn btn-primary">${msg("doLogOutAllSessions")}</button>
    </form>

</@layout.mainLayout>
