<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #202020;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .update-password-container {
            background-color: #333;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
            width: 400px;
            text-align: center;
        }
        .update-password-container h1 {
            margin-bottom: 30px;
            color: #1abc9c;
        }
        .update-password-container input {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #444;
            color: #fff;
        }
        .update-password-container button {
            width: calc(50% - 20px);
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #1abc9c;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        .update-password-container button:hover {
            background-color: #16a085;
        }
        .update-password-container .alert {
            color: red;
            margin-top: 10px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
     <#include "header.ftl">
    <div class="update-password-container">
        <h1>Update Your Password</h1>
        <form action="${url.changePasswordAction}" method="post">
            <input type="password" name="password" placeholder="New Password" required>
            <input type="password" name="password-confirm" placeholder="Confirm New Password" required>
            <#if message??>
                <div class="alert">
                    Please ensure both passwords match and meet the criteria.
                </div>
            </#if>
            <button type="submit">Update Password</button>
        </form>
    </div>
<#include "footer.ftl">
</body>
</html>
