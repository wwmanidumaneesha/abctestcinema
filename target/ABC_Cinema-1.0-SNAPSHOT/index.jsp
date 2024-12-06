<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <title>ABC Cinema - Payment Successful</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <style>
        /* Styles from the provided HTML file */
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to bottom, #000000, #4B0082);
            color: #FFFFFF;
            min-height: 100vh;
        }
        .container {
            width: 100%;
            margin: 0 auto;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 40px;
            background-color: rgba(0, 0, 0, 0.3);
        }
        .logo {
            display: flex;
            align-items: center;
            font-size: 24px;
            font-weight: bold;
        }
        .logo img {
            width: 40px;
            margin-right: 10px;
        }
        .logo span {
            color: #FFD700;
        }
        nav {
            flex-grow: 1;
            display: flex;
            justify-content: center;
        }
        nav ul {
            display: flex;
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        nav ul li {
            margin: 0 20px;
        }
        nav ul li a {
            color: #FFFFFF;
            text-decoration: none;
        }
        .user-actions {
            display: flex;
            align-items: center;
        }
        .user-actions .search, .user-actions .notifications {
            margin-right: 20px;
            font-size: 20px;
        }
        .user-profile {
            display: flex;
            align-items: center;
        }
        .user-profile img {
            width: 32px;
            height: 32px;
            border-radius: 50%;
            margin-right: 10px;
        }
        .user-profile span {
            margin-right: 5px;
        }
        main {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 200px);
        }
        .payment-success {
            background-color: #2D1B4E;
            border-radius: 10px;
            padding: 40px;
            text-align: center;
            max-width: 400px;
        }
        .success-icon {
            background-color: #4CAF50;
            color: #FFFFFF;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 30px;
            margin: 0 auto 20px;
        }
        .payment-success h2 {
            margin-bottom: 20px;
        }
        .payment-success p {
            margin-bottom: 10px;
            color: #B8B8B8;
        }
        .continue-btn {
            background-color: #FFD700;
            color: #000000;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 20px;
        }
        footer {
            background-color: rgba(0, 0, 0, 0.3);
            padding: 20px 40px;
        }
        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }
        .footer-logo {
            display: flex;
            align-items: center;
        }
        .footer-logo img {
            width: 30px;
            margin-right: 10px;
        }
        .footer-logo span {
            color: #FFD700;
            font-weight: bold;
        }
        .footer-links a {
            color: #FFFFFF;
            text-decoration: none;
            margin-right: 20px;
        }
        .social-icons {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
        .social-icons span {
            margin-bottom: 10px;
        }
        .social-icons-container {
            display: flex;
        }
        .social-icons a {
            color: #FFFFFF;
            margin-right: 15px;
            font-size: 20px;
        }
        .copyright {
            text-align: center;
            padding-top: 30px;
            color: #B8B8B8;
            font-size: 14px;
        }
        hr {
            border: 0;
            height: 1px;
            background-color: rgba(255, 255, 255, 0.2);
            margin: 30px 0;
        }
    </style>
</head>
<body>
<div class="container">
    <%-- JSP starts here --%>
    <header>
        <div class="logo">
            <img src="https://i.ibb.co/XDWNCbt/image.png" alt="ABC Cinema logo"/>
            <span>ABC</span> CINEMA
        </div>
        <nav>
            <ul>
                <li><a href="#">Kids</a></li>
                <li><a href="#">What's new</a></li>
                <li><a href="#">Movies</a></li>
                <li><a href="#">Series</a></li>
            </ul>
        </nav>
        <div class="user-actions">
            <div class="search"><i class="fas fa-search"></i></div>
            <div class="notifications"><i class="fas fa-bell"></i></div>
            <div class="user-profile">
                <img src="https://i.ibb.co/jJ4xd9J/image.png" alt="User profile"/>
                <span>Manidu</span>
                <i class="fas fa-chevron-down"></i>
            </div>
        </div>
    </header>
    <main>
        <div class="payment-success">
            <div class="success-icon"><i class="fas fa-check"></i></div>
            <h2>Your Payment is Successful</h2>
            <p>Thank you for your payment. An automated payment receipt will be sent to your email.</p>
            <p>
                Transaction number:
                <%
                    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyyMMddHHmm");
                    String transactionNumber = sdf.format(new java.util.Date());
                    out.print(transactionNumber);
                %>
            </p>
            <button class="continue-btn">Continue</button>
        </div>
    </main>

    <footer>
        <div class="footer-content">
            <div class="footer-logo">
                <img src="https://i.ibb.co/XDWNCbt/image.png" alt="ABC Cinema logo"/>
                <span>ABC</span> CINEMA
            </div>
            <div class="footer-links">
                <a href="#">Movies</a>
                <a href="#">About us</a>
                <a href="#">Contact us</a>
            </div>
            <div class="social-icons">
                <span>Follow us</span>
                <div class="social-icons-container">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-tiktok"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                </div>
            </div>
        </div>
        <hr/>
        <div class="copyright">©2024 ABC Cinema, Inc. All rights reserved</div>
    </footer>
</div>
</body>
</html>
