
<section class="content">
        <div class="container-fluid">
        <span style="color:#AAA;">YOU ARE HERE &nbsp;&nbsp;> </span> <span style="color:#EEE;text-shadow:0px 0px 1px black;">&nbsp;&nbsp;<b>Tag Editor</b></span>
            <div class="block-header">
                <i class="material-icons" style="float:left;font-size:20px;color:#CCC;text-shadow:0px 0px 1px black;">turned_in</i><h2>&nbsp;&nbsp;&nbsp;Tag Editor</h2>
            </div>
    <div class="row">
      <div class="col-md-12">
      <div class="card">
        <div class="body">
          <h3 style="margin-left:100px;">Tags</h3>
        
        <table class="table" >
          <tr>
            <td style="width:100px;"></td>
            <td style="width:100px;">Tag Name</td>
            <td>Description</td>
            <td style="width:200px;">Auto Selected on dash?</td>
            <td style="width:200px;">Default Color</td>
            <td>Action</td>
          </tr>
          <?php 
            foreach ($tags as $tag) {
          ?>

            <tr>
              <td></td>
              <td><?php echo $tag['tag'] ?></td>
              <td><?php echo $tag['tagDesc'] ?></td>
              <td><input type="checkbox" disabled="disabled"></td>
              <td></td>
              <td><a data-toggle="modal" data-target="#deleteTag" class="btn btn-xs btn-danger delete-tag-modal-btn" data-tag_id="<?php echo $tag['_id'] ?>">Delete</a></td>
            </tr>
          <?php
            }
          ?>
        </table>
        </div>
      </div>
        
      </div>
    </div>
</div>
</section>











<!-- Delete Modal -->
<div class="modal fade" id="addNewTag" tabindex="-1" role="dialog" aria-labelledby="addNewTag" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <form action="" id="newTagForm" method="post">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="addNewDocLabel">Add a new Tag</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Tag</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="tag" name="tag">
                </div>
              </div>
              <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Description</label>
                <div class="col-sm-10">
                  <textarea class="form-control" rows="3" id="tagDesc" name="tagDesc"></textarea>
                </div>
              </div>
            
          </div>
        </div>
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
<div class="modal fade" id="deleteTag" tabindex="-1" role="dialog" aria-labelledby="deleteTag" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <form action="" id="newDocForm" method="post">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="addNewDocLabel">Action Confirm</h4>
      </div>
      <div class="modal-body">
        <p>Are you really want to delete this tag ?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger delete-tag-btn">Delete</button>
      </div>
      </form>
    </div>
  </div>
</div>


<script>
$(document).ready(function(){
    $(".js-tags-multiple").select2({
    });
    
  });

</script>