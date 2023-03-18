<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="estateConsultant._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="support/CSS/bootstrap.css" rel="stylesheet" />
<link href="support/CSS/font-awesome.css" rel="stylesheet" />
<link href="support/CSS/Style.css" rel="stylesheet" />
  
    <title></title>
      <style>
       
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

/* Reseting */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    background: #ecf0f3;
}

.wrapper {
    max-width: 350px;
    min-height: 500px;
    margin: 80px auto;
    padding: 40px 30px 30px 30px;
    background-color: #ecf0f3;
    border-radius: 15px;
    box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px #fff;
}

.logo {
    width: 80px;
    margin: auto;
}

.logo img {
    width: 100%;
    height: 80px;
    object-fit: cover;
    border-radius: 50%;
    box-shadow: 0px 0px 3px #5f5f5f,
        0px 0px 0px 5px #ecf0f3,
        8px 8px 15px #a7aaa7,
        -8px -8px 15px #fff;
}

.wrapper .name {
    font-weight: 600;
    font-size: 1.4rem;
    letter-spacing: 1.3px;
    padding-left: 10px;
    color: #555;
}

.wrapper .form-field input {
    width: 100%;
    display: block;
    border: none;
    outline: none;
    background: none;
    font-size: 1.2rem;
    color: #666;
    padding: 10px 15px 10px 10px;
    /* border: 1px solid red; */
}

.wrapper .form-field {
    padding-left: 10px;
    margin-bottom: 20px;
    border-radius: 20px;
    
}

.wrapper .form-field .fas {
    color: #555;
}

.wrapper .btn {
    box-shadow: none;
    width: 100%;
    height: 40px;
    background-color: #03A9F4;
    color: #fff;
    border-radius: 25px;
    box-shadow: 3px 3px 3px #b1b1b1,
        -3px -3px 3px #fff;
    letter-spacing: 1.3px;
}

.wrapper .btn:hover {
    background-color: #039BE5;
}

.wrapper a {
    text-decoration: none;
    font-size: 0.8rem;
    color: #03A9F4;
}

.wrapper a:hover {
    color: #039BE5;
}

@media(max-width: 380px) {
    .wrapper {
        margin: 30px 20px;
        padding: 40px 15px 15px 15px;
    }
}
    </style>
</head>
<body >
    <form id="form1" runat="server">
       <div class="wrapper">
        <div class="logo">
            <img src="../support/images/RCM.png" alt="" />
        </div>
        <div class="text-center mt-4 name">
              <br />
        </div>
            <div class="form-field d-flex align-items-center">
                
               <asp:TextBox ID="username" required="username" runat="server" placeholder="User Name" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-field d-flex align-items-center">
                
          <asp:TextBox ID="password" required="password" TextMode="Password" runat="server" placeholder="Password" CssClass="form-control"></asp:TextBox>
            </div><center>
         <asp:Button ID="login" runat="server" Text="Login" CssClass="btn w-75 btn-success" Onclick="login_Click"/>
        </center>
        <div class="text-center fs-6">
            <br />
     <!--    <a>New User ?</a>&nbsp;&nbsp;<a href="signup.aspx">Sign up</a> -->
        </div>
    </div>
    </form>
    <script src="support/JS/bootstrap.bundle.js"></script>
    <script src="support/JS/bootstrap.js"></script>
    
</body>
</html>
