<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
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
        .login-container {
            background-color: #333;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
            width: 400px;
            text-align: center;
        }
        .login-container h1 {
            margin-bottom: 30px;
            color: #1abc9c;
        }
        .login-container input {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #444;
            color: #fff;
        }
        .login-container button {
            width: calc(50% - 20px);
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #1abc9c;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        .login-container button:hover {
            background-color: #16a085;
        }
    </style>
</head>
<body>
      <div class="login-container">
        <h1>Welcome to ePNR</h1>
        <form id="loginForm" action="${url.loginAction}" method="post" >
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Sign in</button>
        </form>
    </div>
      <script>
       document.addEventListener("DOMContentLoaded", function() {
            const loginForm = document.getElementById('loginForm');
            
            if (loginForm) {
                loginForm.addEventListener('submit', function(event) {
                    const originalURL = window.location.href; // 提交前的 URL
                    
                    setTimeout(function() {
                        const currentURL = window.location.href; // 提交后的 URL

                        if (originalURL === currentURL) {
                            // 如果 URL 没有变化，说明登录失败
                            alert("Login failed. Please check your credentials and try again.");
                        }
                    }, 1000); // 检查提交后的 URL 是否变化，1秒钟后检查
                });
            } else {
                console.error("Could not find the form with id 'loginForm'.");
            }
        });
    </script>
</body>
</html>
