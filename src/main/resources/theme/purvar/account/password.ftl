<#import "template.ftl" as layout>
<title>${msg("changePasswordHtmlTitle")}</title>
<@layout.mainLayout active='password' bodyClass='password'; section>
<#--  
    <div class="row">
        <p>${msg("changePasswordHtmlTitle")}</p>
    </div>  -->

    <form action="${url.passwordUrl}"  method="post">
        <table class="info">
            <#--  <tr><td>  -->
                <input type="text" id="username" name="username" value="${(account.username!'')}" autocomplete="username" readonly="readonly" style="display:none;">
            <#--  </td></tr>  -->
            <#if password.passwordSet>
                <tr><td>
                    <label for="password" class="control-label">${msg("password")}<span class="required">*</span></label>
                    <input type="password"  id="password" name="password" autofocus autocomplete="current-password">
                </td></tr>
            </#if>

            <#--  <tr><td>  -->
                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
            <#--  </td></tr>  -->

            <tr><td>
                <label for="password-new" class="control-label">${msg("passwordNew")}<span class="required">*</span></label>
                <input type="password"  id="password-new" name="password-new" autocomplete="new-password">
            </td></tr>

            <tr><td>
                <div class="form-group">
                <label for="password-confirm" class="control-label" class="two-lines">${msg("passwordConfirm")}<span class="required">*</span></label>
                <input type="password"  id="password-confirm" name="password-confirm" autocomplete="new-password">
            </td></tr>
        </table>

        <div class="action">
            <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="submitAction" value="Save">${msg("doSave")}</button>
        </div>
    </form>

</@layout.mainLayout>
