```html
<!DOCTYPE html>
<html>

<head>
  <title>DevOps Registration</title>

  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #667eea, #764ba2);
      margin: 0;
      padding: 40px 0;
    }

    .container {
      width: 500px;
      margin: auto;
      padding: 25px;
      background-color: white;
      border-radius: 12px;
      box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.25);
    }

    h1 {
      color: #333;
      text-align: center;
    }

    .container>h1 {
      color: #5a36a3;
    }

    p {
      color: #555;
      text-align: center;
    }

    hr {
      border: 0;
      border-top: 1px solid #ddd;
      margin: 20px 0;
    }

    label {
      display: block;
      margin-top: 15px;
      margin-bottom: 6px;
      color: #333;
    }

    input[type=text],
    input[type=password] {
      width: 100%;
      padding: 12px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 6px;
      box-sizing: border-box;
      font-size: 15px;
    }

    input:focus {
      border: 2px solid #667eea;
      outline: none;
      background-color: #f5f7ff;
    }

    a {
      color: #667eea;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }

    .registerbtn {
      width: 100%;
      padding: 14px;
      border: none;
      border-radius: 6px;
      background: linear-gradient(90deg, #667eea, #764ba2);
      color: white;
      font-size: 17px;
      font-weight: bold;
      cursor: pointer;
    }

    .registerbtn:hover {
      background: linear-gradient(90deg, #764ba2, #667eea);
    }

    .signin {
      margin-top: 20px;
      background-color: #f3f3f3;
    }

    .thankyou {
      margin-top: 20px;
      text-align: center;
      color: white;
    }
  </style>
</head>

<body>

  <form action="action_page.php">

    <div class="container">

      <h1>DevOps Learning Registration</h1>

      <p>Virtual TechBox YouTube Channel</p>

      <p>Please fill in this form to create an account.</p>

      <hr>

      <label for="Name">
        <b>Enter Name</b>
      </label>

      <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>


      <label for="mobile">
        <b>Enter Mobile</b>
      </label>

      <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>


      <label for="email">
        <b>Enter Email</b>
      </label>

      <input type="text" placeholder="Enter Email" name="email" id="email" required>


      <label for="psw">
        <b>Password</b>
      </label>

      <input type="password" placeholder="Enter Password" name="psw" id="psw" required>


      <label for="psw-repeat">
        <b>Repeat Password</b>
      </label>

      <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

      <hr>

      <p>
        By creating an account you agree to our
        <a href="#">Terms & Privacy</a>.
      </p>

      <button type="submit" class="registerbtn">
        Register
      </button>

    </div>


    <div class="container signin">

      <p>
        Already have an account?
        <a href="#">Sign in</a>.
      </p>

    </div>


    <div class="thankyou">

      <h1>Thank You!</h1>

      <h2>Happy Learning 🚀</h2>

      <h2>See You Again!</h2>

    </div>

  </form>

</body>

</html>
```
