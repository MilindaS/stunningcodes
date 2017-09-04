<div class="container">

	 <div class="signin-container col-md-offset-4 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">

      <form class="form-signin" id="signin-form">
        <h2 class="form-signin-heading">Please sign in</h2>
        <div class="form-group">
	        <label for="email" class="sr-only">Email address</label>
	        <input type="email" id="email" name="email" class="form-control" placeholder="Email address">
	    </div>
	    <div class="form-group">
	        <label for="password" class="sr-only">Password</label>
	        <input type="password" id="password" name="password" class="form-control" placeholder="Password">
	    </div>
        <div class="form-group">
	        <div class="checkbox">
	          <label>
	            <input type="checkbox" value="remember-me"> Remember me
	          </label>
	        </div>
    	</div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <a href="<?php echo BASEURL;?>auth/signup" class="signup-link">Create an account?</a>
      </form>

    </div> <!-- /container -->
</div>

<script>


$("#signin-form").validate({
   rules: {
    email: {
    	required: true
    },
    password: {
    	required: true
    }
  },
  submitHandler: function(form) {
    $.ajax({
      url:'<?php echo BASEURL;?>auth/doSignin',
      method:'POST',
      data:$("#signin-form").serialize(),
      dataType:'json'
    }).done(function(data){
      if(data.type=='success'){
          window.location = '<?php echo BASEURL;?>dash';
      }else{
        $.growl.error({title:'', message: data.msg ,location:'br'});
      }
    });
  }
});

$(document).ready(function(){

});
</script>