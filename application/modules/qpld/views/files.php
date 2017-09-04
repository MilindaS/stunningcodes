<div class="container">
<br>
<br>
<br>
<br>
<div class="row">
<div class="col-lg-12">
<div class="panel panel-default">
  <div class="panel-body">
	<div class="dataTable_wrapper">
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr>
                <th>File Name</th>
                <th>Preview or Download</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach ($files as $file): 
         
        ?>
            <tr class="odd gradeX">
                <td><?php echo $file; ?></td>
                <td><?php echo '<a href="'.base_url().'public/uploads/'.$file.'" target="_blank">Preview</a>'; ?></td>
                <td>
                	<a data-toggle="modal" data-file="<?php echo $file; ?>" data-target="#deleteRecordModal" class="js-delete-record btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i></a>
                </td>
            </tr>

        <?php endforeach ?>
        </tbody>
    </table>
</div>
</div>
</div>
</div>
</div>
</div>



<!-- Modal -->
<div class="modal fade" id="deleteRecordModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Are you sure ?</h4>
      </div>
      <div class="modal-body">
        <div class="row">
        	<div class="col-md-12">
        		Privacy Protected <i class="glyphicon glyphicon-lock"></i>
				<br>
				<br>
        		<input type="password" class="form-control" autofocus="true" id="passwordPrt">
        		<input type="hidden" >
        	</div>
        </div>
      </div>
    </div>
  </div>
</div>



<script>
	$(document).ready(function() {
		var file = "";
        $('#dataTables-example').DataTable({
                responsive: true,
        });
        $(document).on('click','.js-delete-record',function(){
        	file = $(this).data('file');
        });

        $(document).on('keyup','#passwordPrt',function(e){
        	if(e.which==13){
        		// alert($(this).val());
        		$.ajax({
			        url:'/dash/unlockDoc',
			        type:'post',
			        data:{'privacy_key':$(this).val()},
			        dataType:'json'
			      }).done(function(data){
        			console.log(file);
			        if(data.type){
			        	document.location.href = "/qpld/deleteFile/"+file;
			        }else{
			        	$.growl.error({title:'', message: 'Authentication Failed !' ,location:'br'});
			        }
			      });
        	}
        })
    });
</script>