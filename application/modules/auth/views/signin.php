<div class="login-page ls-closed">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);">Stunning<b>Codes</b></a>
            <small>Admin BootStrap Based - Material Design</small>
        </div>
        <div class="card">
            <div class="body">
                <form class="form-signin" id="signin-form" method="POST">
                    <div class="msg">Sign in to start your session</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-user" style="color:#EEE;font-size:18px;"></i>
                        </span>
                        <div class="form-line">
                            <input class="form-control" style="padding:0px 8px;" type="email" id="email" name="email" placeholder="Email address" required autofocus autocomplete="off" >
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-lock" style="color:#EEE;font-size:18px;"></i>
                        </span>
                        <div class="form-line">
                            <input type="password"  style="padding:0px 8px;" id="password" name="password" placeholder="Password" class="form-control" required>
                        </div>
                    </div>
                    <div class="row">
                        
                        <div class="col-md-4 col-md-offset-8">
                            <button class="btn btn-block bg-cyan waves-effect pull-right" type="submit">SIGN IN</button>
                        </div>
                    </div>
                    <div class="row m-t-15 m-b--20">
                        <div class="col-xs-6">
                            <a href="sign-up.html">Register Now!</a>
                        </div>
                        <div class="col-xs-6 align-right">
                            <a href="forgot-password.html">Forgot Password?</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
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