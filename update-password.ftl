<#include "header.ftl">
<div style="font-family: Arial, sans-serif; background-color: #202020; color: #fff; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">
    <div style="background-color: #333; padding: 40px; border-radius: 10px; box-shadow: 0 0 15px rgba(0, 0, 0, 0.5); width: 400px; text-align: center;">
        <h1 style="margin-bottom: 30px; color: #1abc9c;">Update Your Password</h1>
        <form action="${url.loginAction}" method="post">
            <input type="password" name="password" placeholder="New Password" required style="width: calc(100% - 20px); padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; background-color: #444; color: #fff;">
            <input type="password" name="password-confirm" placeholder="Confirm New Password" required style="width: calc(100% - 20px); padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; background-color: #444; color: #fff;">
            <#if message??>
                <div style="color: red; margin-top: 10px; margin-bottom: 10px;">
                    Please ensure both passwords match and meet the criteria.
                </div>
            </#if>
            <button type="submit" style="width: calc(50% - 20px); padding: 10px; border: none; border-radius: 5px; background-color: #1abc9c; color: #fff; font-size: 16px; cursor: pointer;">Update Password</button>
        </form>
    </div>
</div>
<#include "footer.ftl">
