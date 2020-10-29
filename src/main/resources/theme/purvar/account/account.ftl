<#import "template.ftl" as layout>
<title>${msg("editAccountHtmlTitle")}</title>
<@layout.mainLayout active='account' bodyClass='user'; section>

    <#--  <div class="row">
        <p>${msg("editAccountHtmlTitle")}</p>
    </div>  -->

    <form action="${url.accountUrl}" method="post">
        <table class="info">
            <#--  <tr><td>  -->
                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
            <#--  </td></tr>  -->
            
            <#if !realm.registrationEmailAsUsername>
                <tr><td>
                    <div class=" ${messagesPerField.printIfExists('username','has-error')}">
                        <label for="username" class="control-label">${msg("username")}<span class="required">*</span></label> <#if realm.editUsernameAllowed></#if>
                     <input type="text"  id="username" name="username" <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')}"/>
                    </div>
                </td></tr>
            </#if>

            <tr><td>
                <div class=" ${messagesPerField.printIfExists('email','has-error')}">
                    <label for="email" class="control-label">${msg("email")}<span class="required">*</span></label> 
                    <input type="text"  id="email" name="email" autofocus value="${(account.email!'')}"/>
                </div>
            </td></tr>

            <tr><td>
                <div class=" ${messagesPerField.printIfExists('firstName','has-error')}">
                    <label for="firstName" class="control-label">${msg("firstName")}<span class="required">*</span></label> 
                    <input type="text"  id="firstName" name="firstName" value="${(account.firstName!'')}"/>
                </div>
            </td></tr>

            <tr><td>
                <div class="${messagesPerField.printIfExists('lastName','has-error')}">
                    <label for="lastName" class="control-label">${msg("lastName")}<span class="required">*</span></label>
                    <input type="text"  id="lastName" name="lastName" value="${(account.lastName!'')}"/>
                </div>
            </td></tr>

        </table>
        <div class="action">
            <#if url.referrerURI??><a href="${url.referrerURI}">${kcSanitize(msg("backToApplication")?no_esc)}</a></#if>
            <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="submitAction" value="Save">${msg("doSave")}</button>
            <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" name="submitAction" value="Cancel">${msg("doCancel")}</button>
        </div>
    </form>

</@layout.mainLayout>
