<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Monoton&display=swap" rel="stylesheet">
    
    <title>Search Page</title>
    
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        overflow: hidden;
        background: #f8f9fa;
    }
    
    .animated-title {
        text-align: center;
        text-transform: uppercase;
        font-family: 'Monoton', cursive;
        font-size: 3rem;
        color: #ffffff;
        cursor: pointer;
        transition: color 20.0s;
    }
    
    .animated-title:hover {
        color: #ff69b4; /* Change color on hover */
    }

    .animated-title span {
        display: inline-block;
        animation: changeColor 2s linear infinite; /* Word-by-word color change animation */
    }

    .animated-bg {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: url('https://source.unsplash.com/1920x1080/?nature,landscape') center/cover no-repeat;
        animation: animateBg 30s linear infinite;
    }

    @keyframes animateBg {
        0% { background-position: 0 0; }
        100% { background-position: 100% 0; }
    }

    .container {
        position: relative;
        z-index: 1;
    }

    .card {
        width: 70%;
        margin: auto;
        margin-top: 10%;
        border-radius: 15px;
        box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        overflow: hidden;
    }

    .card-body {
        padding: 3rem;
    }

    .form-control {
        border-radius: 30px;
        padding: 1.5rem;
    }

    .btn-outline-Light {
        background-color: #4CAF50;
        color: #ffffff;
        border-color: #4CAF50;
        border-radius: 30px;
        padding: 1rem 2rem;
        transition: all 0.3s ease;
    }

    .btn-outline-Light:hover {
        background-color: #45a049;
        color: #ffffff;
    }

    .animated-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        font-size: 3rem;
        color: #ffffff;
        animation: animateText 5s ease infinite;
    }

    @keyframes animateText {
        0% { transform: translate(-50%, -50%) rotate(0deg); }
        50% { transform: translate(-50%, -50%) rotate(5deg); }
        100% { transform: translate(-50%, -50%) rotate(0deg); }
    }
    
    .text-fun {
        font-family: 'Comic Sans MS', cursive;
        transition: color 0.5s ease-in-out;
    }

    .text-fun:hover {
        color: #ff0000; /* Change to any color you want */
    }

    .animated-word {
        display: inline-block;
        animation: changeColor 5s infinite alternate;
    }

    @keyframes changeColor {
        0%, 100% { color: #ff00ff; } /* Start and end color */
        25% { color: #00ff00; } /* Change to a different color */
        50% { color: #0000ff; } /* Change to another different color */
        75% { color: #ffff00; } /* Change to yet another different color */
    }
    
    .form-control::placeholder {
    text-align: center; /* Center the placeholder text */
    color: #aaaaaa; /* Light color for the placeholder text */
	}

	.form-control:hover::placeholder {
    color: #bbbbbb; /* Lighter color on hover */
	}
	
</style>
</head>
<body>
    
   <div class="animated-bg"></div>
    <div class="container">
        <div class="card mx-auto bg-transparent">
            <div class="card-body"> 
                <h3 class="animated-title text-center">
            		<span>M</span><span>y</span> <span>S</span><span>e</span><span>a</span><span>r</span><span>c</span><span>h</span>
        		</h3>
                	<form action="search" class="mt-4">                    
                    	<div class="form-group">
                        	<input type="text" name="querybox" placeholder="Search whatever you want" class="form-control">
                    	</div>
                
                    	<div class="container text-center">
                        	<button class="btn btn-outline-Light mt-4">Search</button>  
                    	</div>
                	</form>
            </div>
       	</div>
    </div>
    <!-- <div class="animated-text">Search Anything</div> -->

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>	