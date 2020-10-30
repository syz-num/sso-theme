<#import "template.ftl" as layout>
<title>${msg("sessionsHtmlTitle")}</title>
<@layout.mainLayout active='sessions' bodyClass='sessions'; section>

    <#--  <div class="row">
        <p>${msg("sessionsHtmlTitle")}</p>
    </div>  -->

    <table class="info">
        <thead>
        <tr>
            <td>${msg("clients")}</td>
            <td>${msg("lastAccess")}</td>
            <td>${msg("ip")}</td>
        </tr>
        </thead>

        <tbody>
        <#list sessions.sessions as session>
            <tr>
                <td>
                    <#list session.clients as client>
                        ${client.name}<br/>
                    </#list>
                </td>
                <td>${session.lastAccess?datetime('yyyy-MM-dd hh:mm:ss')}</td>
                <td>${session.ipAddress}</td>
            </tr>
        </#list>
        </tbody>

    </table>

    <form action="${url.sessionsUrl}" method="post" class="action">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <button id="logout-all-sessions" class="btn btn-primary">${msg("doLogOutAllSessions")}</button>
    </form>

</@layout.mainLayout>
