<?php include 'inc/header.php'; ?>
<div class="container">
		<div class="row">
        <div class="col-lg-12 text-center">
				<h1 class="mt-5">Online Examination System</h1>
				<p class="lead">Complete MCQ Based Online Examination System!</p>
				<img src="img/regi.png" width="130px;"/>				
        </div>
        
        <div class="col-lg-2">
        
		</div>
		
		<div class="col-lg-8">
			<div class="form-group">
				<label for="exampleInputName">FullName</label>
				<input type="text" class="form-control" id="name" name="name" placeholder="Enter Your FullName">
				<small id="emailHelp" class="form-text text-muted">Enter your full name (Spaces allowed).</small>
	</div>
	
	<div class="form-group">
				<label for="exampleInputusername">Username</label>
				<input type="text" class="form-control" id="userName" name="userName" placeholder="Enter Username (without spaces)">
				<small id="emailHelp" class="form-text text-muted">Enter only the username</small>
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Email Address</label>
				<input type="email" class="form-control" id="email" name="email" placeholder="Enter Email">
				<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label>
				<input type="password" name="password" id="password" class="form-control" placeholder="Password">
			</div>
	<button type="submit" id="registersubm" value="Signup" class="btn btn-success">Register</button>
	<a class="btn btn-outline-danger" href="index.php">Already Registered? Login</a>
	</form>
	<br/><br/>
	<span id="state"></span>
		</div>

		<div class="col-lg-2"></div>
		</div>
  </div>
<?php include 'inc/footer.php'; ?>