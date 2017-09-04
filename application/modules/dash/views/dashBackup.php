<div class="container">
  <div class="row">
    <div class="col-md-12">
      <div class="search-box">
        <div class="col-md-3">
            <div class="site-logo hidden-lg">
              <a href="<?php echo base_url(); ?>" style="text-decoration:none;color:#FFF;"><span style="color:#52B5CF;">S</span>tunning <span style="color:#52B5CF;">C</span>odes </a><span style="color:#52B5CF;">/></span>
            </div>  
            <div class="site-logo-dash hidden-sm hidden-xs pull-left">
              <a href="<?php echo base_url(); ?>" style="text-decoration:none;color:#FFF;"><span style="color:#52B5CF;">S</span>tunning <span style="color:#52B5CF;">C</span>odes </a><span style="color:#52B5CF;">/></span>
            </div>
        </div>
        <div class="col-md-6">
          <form class="form-inline" id="search-form" method="post" action="">
            <div class="form-group input-group stylish-input-group pull-left" style="margin-right:50px;">
                <input type="text" class="form-control"  placeholder="Lets see what you need..."  name="search_doc_title" id="search_doc_title" placeholder="Search" data-provide="typehead">
                <span class="input-group-addon">
                    <button type="submit">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>  
                </span>
            </div>
          </form>
        </div>
        <div class="col-md-3">
          
            <div class="dropdown pull-right">
                <a id="drop4" href="#" class="dropdown-toggle btn btn-default " data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                  <span class="glyphicon glyphicon-user"></span>
                  &nbsp;
                  <span class="caret"></span>
                </a>
                <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4">
                  <li><a role="menuitem" tabindex="-1" href="/dash"><span class="glyphicon glyphicon-tasks"></span>&nbsp;&nbsp;Dash</a></li>
                  <li class="divider"></li>
                  <li><a role="menuitem" tabindex="-1" href="/dash/calendar"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Calendar Mode</a></li>
                  <li class="divider"></li>
                  <li><a role="menuitem" tabindex="-1" href="/dash/tagEdit"><span class="glyphicon glyphicon-tag"></span>&nbsp;&nbsp;Tag Editor</a></li>
                  <li class="divider"></li>
                  <li><a role="menuitem" tabindex="-1" href="<?php echo BASEURL;?>auth/doSiginout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;Sign out</a></li>
                </ul>
              </div>

              <span class="btn pull-right btn-primary btn-add-doc" data-toggle="modal" data-target="#addNewDoc"><i class="glyphicon glyphicon-file"></i>&nbsp;&nbsp;<span>New Doc</span></span>
              <button type="submit" class="btn btn-default glyphicon glyphicon-refresh do-refresh-btn pull-right"></button>
          </div>
      </div>
    </div>
  </div>
</div>

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
      <br>
      
  </div>
  <!-- <div class="container">
    <div class="row">
      <div class="col-md-12 hidden-sm hidden-md hidden-xs">
        <div class="col-md-2">
          <span class="pull-right" style="color:#FFF;">Tags</span>
        </div>
        <div class="col-md-8">
          <select class="js-example-basic-multiple" multiple="multiple" style="width:100%;">
            <option value="AL">Alabama</option>
            <option value="WY">Wyoming</option>
          </select>
          <div class="sc-mselect">
            <span class="tags"></span>
          </div>
        </div>
      </div>
    </div>
  </div> -->
<!-- <div class="container hidden-xs hidden-sm">
  <div class="row timeline">
    <div class="col-md-12">
      <div class="cst">
       </div>
    </div>
  </div>
</div> -->






<!-- Modal New Doc-->
<div class="modal fade" id="addNewDoc" tabindex="-1" role="dialog" aria-labelledby="addNewDocLabel" aria-hidden="true">
  <div class="modal-dialog" style="width:800px;">
    <div class="modal-content" >
    <form action="" id="newDocForm" method="post">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="addNewDocLabel">Add New Document</h4>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <input type="text" name="title" id="title" class="form-control" placeholder="Title" autofocus="autofocus">
        </div>
        <div class="form-group">
          <textarea name="content" class="form-control" id="content" placeholder="content" rows="10"></textarea>
        </div>
        <div class="form-group">
          <div class="sc-mselect">
            <span class="tagsAdd"></span>
          </div>
        </div>
        <div class="form-group">
          <!-- <input type="text" name="date" id="date" class="form-control" placeholder="Date"> -->
           <div class='input-group date' id='datetimepicker' >
                <input type='text' class="form-control" id="datetime" name="datetime" placeholder="Date"/>
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
        <div class="form-group">
          <label for="privacy_toggle" class="col-md-2 privacy-label" >Privacy</label>
          <input type="checkbox" class="col-md-10" data-toggle="toggle" id="privacy_toggle" name="privacy_toggle">
        </div>
        <div class="btn-group" role="group" aria-label="...">
          <!-- <button type="button" class="btn btn-default glyphicon glyphicon-paperclip" data-toggle="tooltip" data-placement="top" title="Attach Files"></button> -->
        </div>
        <input type="text" name="id" id="doc_id">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
      </div>
      </form>
    </div>
  </div>
</div>


<!-- Delete Modal -->
<div class="modal fade" id="deleteDoc" tabindex="-1" role="dialog" aria-labelledby="deleteDoc" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <form action="" id="newDocForm" method="post">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
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
<?php 
    $tagsL = '';
    foreach(modules::run('dash/getAllTags') as $tags){
      $tagsL = $tagsL.'"'.$tags['tag'].'",';
    } 
    $tagsL = rtrim($tagsL,',');
?>



<script>
  $(document).ready(function(){
    // $(".js-tags-select-multiple").select2({
    //   placeholder: "Select a Tag"
    // });
    var tagsAll = [<?php echo $tagsL;?>];
    $('.tags').tabSelect({
      tabElements: tagsAll
    });
    $('.tagsAdd').tabSelect({
      tabElements: tagsAll
    });
    
  });
</script>