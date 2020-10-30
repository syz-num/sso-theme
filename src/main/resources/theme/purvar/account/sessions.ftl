<#import "template.ftl" as layout>
<title>${msg("sessionsHtmlTitle")}</title>
<@layout.mainLayout active='sessions' bodyClass='sessions'; section>

    <#--  <div class="row">
        <p>${msg("sessionsHtmlTitle")}</p>
    </div>  -->

    <table class="info">
        <thead>
        <tr>
            <td>${msg("lastAccess")}</td>
            <td>${msg("ip")}</td>
            <td>${msg("clients")}</td>
        </tr>
        </thead>

        <tbody>
        <#list sessions.sessions as session>
            <tr>
                <td>${session.lastAccess?datetime}</td>
                <td>${session.ipAddress}</td>
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
