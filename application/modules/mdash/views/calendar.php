<div class="site-logo hidden-lg">
  Stunning Codes
</div>
<div class="search-box">

  <div class="site-logo-dash hidden-sm hidden-xs">
    Stunning Codes
  </div><br class="hidden-lg">
  <form class="form-inline" id="search-form" method="post" action="">
   <!--  <div class="form-group">
        <input type="text" class="form-control" name="search_doc_title" id="search_doc_title" placeholder="Search" data-provide="typehead">
    </div> -->
       
      <!-- <button type="submit" class="btn btn-primary do-search-btn">Search</button> -->
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
      <span class="btn btn-primary btn-add-doc pull-right" data-toggle="modal" data-target="#addNewDoc"><i class="glyphicon glyphicon-file"></i>&nbsp;&nbsp;<span>New Doc</span></span>
      <button type="submit" class="btn btn-default glyphicon pull-right glyphicon-refresh do-refresh-btn"></button>
  </form>
</div>


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
          <label for="privacy_toggle" class="col-md-2 privacy-label" >Privacy</label>
          <input type="checkbox" class="col-md-10" data-toggle="toggle" id="privacy_toggle" name="privacy_toggle">
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
        <hr>
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
<?php 
// print_r($dt);
// foreach ($dt as $document) {
//   echo $document['ts']['gts'];
//   echo '<br>';
//   echo date('Y-m-d',$document['ts']['ts']/1000);
//   echo '<br>';
// }
?>

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

<div class="caro-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div id='calendar'></div>
      </div>
    </div>
  </div>
</div>

<script>

  $(document).ready(function() {
    var cts_row =new Date();
    var cds =  cts_row.getFullYear() +"-"+ cts_row.getMonth() +"-"+ cts_row.getDate();
    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,basicWeek,basicDay'
      },
      defaultDate: '2015-10-8',
      editable: false,
      eventLimit: true, // allow "more" link when too many events
      events: [
        <?php 
          foreach ($dt as $document) {
            echo "{ title : '".$document['title']."',";
            echo " start : '".date('Y-m-d',$document['ts']['ts']/1000)."'},";
          }
        ?>
        // {
        //   title: 'Click for Google',
        //   url: 'http://google.com/',
        //   start: '2015-02-28'
        // }
      ]
    });

  });

</script>