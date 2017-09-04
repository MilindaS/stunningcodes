<div class="container">

	 <div class="signup-container col-md-offset-4 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">

      <form class="form-signup">
        <h2 class="form-signin-heading">Please sign up</h2>
        <div class="form-group">
	        <label for="firstname" class="sr-only">First Name</label>
	        <input type="text" id="firstname" name="firstname" class="form-control" placeholder="First name" required autofocus>
	    </div>
	    <div class="form-group">
	        <label for="lastname" class="sr-only">Last Name</label>
	        <input type="text" id="lastname" name="lastname" class="form-control" placeholder="Last name" required autofocus>
	    </div>
        <div class="form-group">
	        <label for="email" class="sr-only">Email address</label>
	        <input type="email" id="email" name="email" class="form-control" placeholder="Email address" required autofocus>
	    </div>
      <div class="form-group">
          <label for="privacy_code" class="sr-only">Privacy Code</label>
          <input type="password" id="privacy_code" name="privacy_code" class="form-control" placeholder="Privacy Code" required autofocus>
      </div>
	    <div class="form-group">
	        <label for="password" class="sr-only">Password</label>
	        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
	    </div>
	    <div class="form-group">
	        <label for="passwordre" class="sr-only">Re Password</label>
	        <input type="password" id="passwordre" name="passwordre" class="form-control" placeholder="Re Password" required>
	    </div>
        <div class="form-group">
	        <div class="checkbox">
	          <label>
	            <input type="checkbox" value="remember-me"> I Agree to the terms and conditions
	          </label>
	        </div>
    	</div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
        <a href="<?php echo BASEURL;?>auth/signin" class="signup-link">Already member?</a>
      </form>

    </div> <!-- /container -->
</div>


<script>


$(".form-signup").validate({
   rules: {
    firstname: {
    	required: true
    },
    lastname: {
    	required: true
    },
    privacy_code:{
      required:true
    },
    email: {
    	required: true,
      email: true,
      remote: {
        url: "<?php echo BASEURL;?>auth/checkEmailAvailability",
        type: "post",
        data: {
          email: function() {
            return $( "#email" ).val();
          }
        }
      }
    },
    password: {
    	required: true
    },
    passwordre: {
    	required: true,
    	equalTo: "#password"
    }
  },
  messages: {
    email:{
      required: "This field is required",
      email: "Please enter a valid email address",
      remote: $.validator.format("This email is already taken")
    }
  },
  submitHandler: function(form) {
    $.ajax({
      url:'<?php echo BASEURL;?>auth/doSignup',
      method:'POST',
      data:$(".form-signup").serialize(),
      dataType:'json'
    }).done(function(data){
    	console.log(data);
      if(data.type=='success'){
      		var html = "<p style='color:#FFF;font-size:18px;'>Your sign up process need verification.. Check your email..<br /><a href='<?php echo BASEURL;?>' style='color:#fff;font-size:12px;margin-top:10px;float:right;'>Go Back</a></p>";
          $('.signup-container').css({'width':'510px','top':'50px','left':'-50px'}).html(html);
      }
    });
  }
});
</script>