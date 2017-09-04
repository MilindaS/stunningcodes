

    <section class="content">
        <div class="container-fluid">
            <span style="color:#AAA;">YOU ARE HERE &nbsp;&nbsp;> </span> <span style="color:#EEE;text-shadow:0px 0px 1px black;">&nbsp;&nbsp;<b>Dashboard</b></span>
            <div class="block-header">
                <i class="material-icons" style="float:left;font-size:20px;color:#CCC;text-shadow:0px 0px 1px black;">desktop_windows</i><h2>&nbsp;&nbsp;&nbsp;Dashboard</h2>
            </div>
            <div class="row clearfix">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="card xcard">
                        <div class="body" style="min-height:600px;">
                            <div class="caro-wrapper">
                            <div id="grid-gallery" class="grid-gallery">
                                <section class="grid-wrap">
                                  <ul class="grid">
                                  </ul>
                                </section><!-- // grid-wrap -->

                                 <section class="slideshow">
                                  <ul>
                                  </ul>
                                  <nav>
                                    <span class="icon nav-prev"></span>
                                    <span class="icon nav-next"></span>
                                    <span class="icon nav-close"></span>
                                  </nav>

                                </section><!-- // slideshow -->
                              </div><!-- // grid-gallery -->
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            

        
        </div>
    </section>



<!-- Modal New Doc-->
<div class="modal fade" id="addNewDoc" tabindex="-1" role="dialog" aria-labelledby="addNewDocLabel" aria-hidden="true">
  <div class="modal-dialog" style="width:800px;">
    <div class="modal-content" >
    <form action="" id="newDocForm" method="post">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="material-icons">highlight_off</i></span></button>
        <h4 class="modal-title" id="addNewDocLabel">Add New Document</h4>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <fieldset class="scheduler-border ">
            <legend class="scheduler-border"><span style="font-size:13px;padding-left:5px;">Title</span></legend>
            <input type="text" name="title" id="title" style="background:#EFEFEF;padding:2px 10px;" class="form-control" placeholder="Title" autofocus="autofocus">
          </fieldset>
        </div>

        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active"><a href="#homeContent" aria-controls="homeContent" role="tab" data-toggle="tab">Content</a></li>
          <li role="presentation"><a href="#homeunp" aria-controls="profile" role="tab" data-toggle="tab">UNP</a></li>
        </ul>


        <div class="tab-content">
          <div role="tabpanel" class="tab-pane active" id="homeContent">
            <div class="form-group">
              <fieldset class="scheduler-border ">
                <textarea name="content" class="form-control" id="content" placeholder="content" rows="10"></textarea>
              </fieldset>
            </div>
          </div>
          <div role="tabpanel" class="tab-pane" id="homeunp">
            <div class="form-group">
              <label class="sr-only" for="username">Email address</label>
              <input type="text" class="form-control" name="username" id="username" style="background:#EFEFEF;padding:2px 10px;"  placeholder="Username">
            </div>
            <div class="form-group">
              <label class="sr-only" for="xpassword">Password</label>
              <input type="password" class="form-control" name="xpassword" id="xpassword" style="background:#EFEFEF;padding:2px 10px;"  placeholder="Password">
            </div>
          </div>
        </div>

      
        
        
        <div class="form-group">
          <div class="row">
            <div class="col-md-3">
              <fieldset class="scheduler-border ">
                <legend class="scheduler-border"><span style="font-size:13px;padding-left:5px;">Privacy</span></legend>
                  <label for="privacy_toggle" class="col-md-6 privacy-label" ><span style="font-size:11px;">Toggle</span></label>
                  <input type="checkbox" class="col-md-6" data-toggle="toggle" id="privacy_toggle" name="privacy_toggle">
              </fieldset>
            </div>
            <div class="col-md-5">
              <fieldset class="scheduler-border ">
                <legend class="scheduler-border"><span style="font-size:13px;padding-left:5px;">Background</span></legend>
                  <label for="privacy_toggle" class="col-md-6 privacy-label" ><span style="font-size:11px;">Color</span></label>
                  <select name="colorpicker-modal-picker" id="colorpicker-modal-picker">
                    <option value="#C0D369"></option>
                    <option value="#5484ed"></option>
                    <option value="#A6D2EF"></option>
                    <option value="#46d6db"></option>
                    <option value="#7ae7bf"></option>
                    <option value="#51b749"></option>
                    <option value="#fbd75b"></option>
                    <option value="#ffb878"></option>
                    <option value="#D9D6A5"></option>
                    <option value="#E4494E"></option>
                    <option value="#dbadff"></option>
                    <option seleted="true" value="#e1e1e1"></option>
                  </select>
              </fieldset>
            </div>
          </div>
        </div>
        <div class="form-group">
          <!-- <input type="text" name="date" id="date" class="form-control" placeholder="Date"> -->
           <fieldset class="scheduler-border ">
            <legend class="scheduler-border"><span style="font-size:13px;padding-left:5px;">Make it memorable</span></legend>
             <div class='input-group date' id='datetimepicker' >
                  <input type='text' class="form-control" id="datetime" style="background:#EFEFEF;padding:2px 10px;" name="datetime" placeholder="Date"/>
                  <span class="input-group-addon">
                      <span class="glyphicon glyphicon-calendar"></span>
                  </span>
              </div>
            </fieldset>
        </div>
        <div class="form-group">

        </div>
        <div class="btn-group" role="group" aria-label="...">
          <!-- <button type="button" class="btn btn-default glyphicon glyphicon-paperclip" data-toggle="tooltip" data-placement="top" title="Attach Files"></button> -->
        </div>
        <input type="hidden" name="id" id="doc_id">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
      </div>
      </form>
    </div>
  </div>
</div>

<div class="modal fade" id="deleteDoc" tabindex="-1" role="dialog" aria-labelledby="deleteDoc" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <form action="" id="newDocForm" method="post">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="material-icons">highlight_off</i></span></button>
        <h4 class="modal-title" id="addNewDocLabel">Action Confirm</h4>
      </div>
      <div class="modal-body">
        <p>Are you really want to delete this doc ?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-danger delete-doc-btn">Delete</button>
      </div>
      </form>
    </div>
  </div>
</div>
