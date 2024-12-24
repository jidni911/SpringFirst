<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Welcome to My JSP Page</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f8ff;
                color: #333;
                text-align: center;
                margin: 0;
                padding: 0;
            }

            footer {
                background-color: #4682b4;
                color: white;
                padding: 10px 0;
                position: fixed;
                width: 100%;
                bottom: 0;
            }

            section {
                margin: 20px;
            }
        </style>
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">My JSP Page</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contact">Contact</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <section id="home">
            <h2>Hello, <%= request.getAttribute("userName") %>!</h2>
            
        <p>Welcome to my JSP page.</p>
    </section>
    <section id=" about">
                <h2>About This Page</h2>
                <p>This is a fantastic web page created using JSP. It has a clean and modern design.</p>
        </section>
        <section id="contact">
            <h2>Contact Us</h2>
            <div class="card" style="width: 18rem; margin: auto;">
                <div class="card-body">
                    <h5 class="card-title">Contact Form</h5>
                    <form class="contact-form">
                        <div class="form-group">
                            <input type="text" class="form-control" name="name" placeholder="Your Name" value=<%= request.getAttribute("userName") %>>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="role" placeholder="Your Email" value=<%= request.getAttribute("role") %>>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="address" placeholder="Your Address" > <%= request.getAttribute("address") %></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Send</button>
                    </form>
                </div>
            </div>
        </section>
        <footer>
            <p>&copy; 2023 My Fantastic JSP Page</p>
        </footer>
    </body>

    </html>