<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
    
    <!-- Custom Styles -->
    <style>
        /* Custom font for heading */
        .heading-custom {
            font-family: 'Comic Sans MS', cursive;
            color: #ff6b6b; /* Heading color */
            transition: color 0.3s; /* Transition effect for color change */
            font-weight: bold; /* Make font bold */
            font-size: 2.5rem; /* Increase font size */
        }

        /* Hover effect for heading */
        .heading-custom:hover {
            color: #2ed573; /* New heading color on hover */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add shadow on hover */
        }

        /* Custom font */
        body {
            font-family: 'Arial', sans-serif;
        }

        /* Custom background color */
        body {
            background-color: #f0f0f0;
        }

        /* Custom form style */
        .form-group label {
            color: #333; /* Label color */
            font-weight: bold;
        }

        /* Custom button style */
        .btn-primary {
            background-color: #007bff; /* Button background color */
            border-color: #007bff; /* Button border color */
            font-weight: bold; /* Make button text bold */
            transition: background-color 0.3s, border-color 0.3s; /* Transition effect for color change */
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Button background color on hover */
            border-color: #0056b3; /* Button border color on hover */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add shadow on hover */
        }

        /* Custom input style */
        .form-control {
            border-color: #007bff; /* Input border color */
            box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1); /* Add shadow to input */
        }

        .form-control:focus {
            border-color: #0056b3; /* Input border color on focus */
            box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3); /* Add stronger shadow on focus */
        }
    </style>
  </head>
  <body>
   
   	<div class="container mt-5">
   	
   		<h2 class="text-center heading-custom">${Header }</h2>
   		<p class="text-center"> ${Desc }</p>
   		
   		<form class="container mt-3" action="processform" method="post">
  		 
  		<div class="form-group">
    		<label for="exampleInputEmail1">Email address</label>
    		<input 
    			type="email" 
    			class="form-control" 
    			id="exampleInputEmail1" 
    			aria-describedby="emailHelp" 
    			placeholder="Enter email"
    			name="email">
    		<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  		</div>
  		
  		<div class="form-group">
    		<label for="userName">User Name</label>
    		<input 
    			type="text" 
    			class="form-control" 
    			id="userName" 
    			aria-describedby="userHelp" 
    			placeholder="Enter User Name"
    			name="userName">
    		<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your user name with anyone else.</small> -->
  		</div>
  		
  		<div class="form-group">
    		<label for="exampleInputPassword1">Password</label>
    		<input 
    			type="password" 
    			class="form-control" 
    			id="exampleInputPassword1" 
    			placeholder="Password"
    			name="userPassword">
  		</div>
  		
  		<div class="form-check">
    		<input 
    			type="checkbox" 
    			class="form-check-input" 
    			id="exampleCheck1">
    		<label class="form-check-label" for="exampleCheck1">Check me out</label>
  		</div>
  		
  		<div class="container mt-3 text-center">
  		
  		<button type="submit" class="btn btn-primary">Sign Up</button>
  		
  		</div>
	</form>
   	 	
  </div> 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>