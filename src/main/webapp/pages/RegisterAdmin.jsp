<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .registration-container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        .registration-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group label {
            font-weight: bold;
            color: #555;
        }

        .btn-primary {
            width: 100%;
            background-color: #2874f0;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .login-link {
            display: block;
            margin-top: 15px;
            text-align: center;
            font-size: 14px;
            color: #2874f0;
            text-decoration: none;
        }

        .login-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <h2>Admin Registration</h2>
        <form action="SaveAdminInfo">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" class="form-control" name="aname" placeholder="Enter your full name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" class="form-control" name="aemail" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" class="form-control" name="ausername" placeholder="Choose a username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" class="form-control" name="apass" placeholder="Create a password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" class="form-control" name="acpass" placeholder="Confirm your password" required>
            </div>
            <button type="submit" class="btn btn-primary">Register</button>
            <a href="AdminLogin" class="login-link">Already have an account? Login here</a>
        </form>
    </div>
</body>
</html>
