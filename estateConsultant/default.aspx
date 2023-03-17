<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="estateConsultant._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link href="support/CSS/bootstrap.css" rel="stylesheet" />
<link href="support/CSS/font-awesome.css" rel="stylesheet" />
<link href="support/CSS/Style.css" rel="stylesheet" />
  
    <title>BABA1</title>
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
    background-image:url('../support/images/bg.jpg') !important;
            background-size: cover;
            background-repeat: no-repeat;
            
  /* Full height */
  height: 100vh;

  /* Center and scale the image nicely */
  background-position: center;
}


.wrapper {
    max-width: 350px;
    min-height: 300px;
    margin: 80px auto;
    padding: 40px 30px 30px 30px;
    background-color: #ecf0f3;
    border-radius: 15px;
   
}


.logo {
    width: 200px;
    margin: auto;
}

.logo img {
    width: 200px;
    height: 80px;
    object-fit:cover;
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
    height: 50px;
  
    color: #fff;
    border-radius: 25px;
    box-shadow: 3px 3px 3px #b1b1b1,
        -3px -3px 3px #fff;
    letter-spacing: 1.3px;
    margin-left:32px;

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
    color:red;
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
    <form id="form2" runat="server">
 <div class="wrapper ">
        <div class="logo">
           <!-- <img src="../support/images/4 Logos.png" alt=""/>-->
            <img src="../support/images/logo.jpg" />
        </div>
          <div class="form-field d-flex align-items-center">
              
                  <div class="col-md-9">
                      <br /><br />
                      <asp:Button ID="login" runat="server" Text="Login" CssClass="btn w-100 btn-success" OnClick="login_Click"/>
                      <br /><br />
                      <asp:Button ID="registration" runat="server" Text="Registration" CssClass="btn w-100 btn-success" OnClick="registration_Click"/>
                  </div>
              </div>
              </div>
    </form>
    <script src="support/JS/bootstrap.bundle.js"></script>
    <script src="support/JS/bootstrap.js"></script>
</body>
</html>
