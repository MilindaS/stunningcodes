var privacy_content = [];
var privacy_username = [];
var privacy_xpassword = [];
var privacy_edit_btn = [];




$(document).on('click','.tags span',function(){
    var tagArray = [];
    $('.tags').find('.active').each(function(){
      tagArray.push($(this).html());
    });
    $.ajax({
        url:'/dash/filterDoc',
        method:'POST',
        data:{'tags':tagArray},
        dataType:'json'
    }).done(function(documents){
          layout.formatGrid(documents,false,false);
    });
});



/* Dash php */
$('#search_doc_title').typeahead(
  {
    highlight: true
  },
  {
    source: function(query,process){
      $.ajax({
        url:'/dash/searchDoc',
        type:'POST',
        data:{'search_doc_title':query},
        dataType:'json',
        success:function(data){
          // console.log(data);
          process(data);
        }
      })
    }
}).on('typeahead:selected', function (obj, datum) {
    // console.log(1);
    $("#search-form").submit();
});


var docs = [];


var currnet_document = {
    id:'',
    title:'',
    content:''
}

var limit = 20;
var offset = 0;
var limitTL = 1000;
var offsetTL = 0;

$("#newDocForm").validate({
   rules: {
    title: {
    required: true
    }
  },
  submitHandler: function(form) {
    var tagArray = [];

    $('.tagsAdd').find('span.active').each(function(){
      tagArray.push($(this).html());
    });

    $.ajax({
      url:'/dash/saveDoc',
      method:'POST',
      data:{'tags':tagArray,'privacy_toggle':$('#privacy_toggle').prop('checked'),'datetime':$('#datetime').val(),'title':$('#title').val(),'username':$('#username').val(),'xpassword':$('#xpassword').val(),'content':CKEDITOR.instances.content.getData(),'id':$('#doc_id').val(),'colorpicker-modal-picker':$('#colorpicker-modal-picker').val()},
      dataType:'json'
    }).done(function(data){
      if(data.type=='success'){
          $('#addNewDoc').modal('hide');
          $.growl.success({title:'', message: data.msg ,location:'br'});
          $('.slideshow').find('.nav-close').trigger('click');
          limit = 20;
          offset = 0;
          loadGrid(limit,offset,false);
          document.getElementById("newDocForm").reset();

      }
    });
  }
});


$("#newTagForm").validate({
       rules: {
        tag: {
          required: true
        }
      },
      submitHandler: function(form) {
        $.ajax({
          url:'/dash/saveTag',
          method:'POST',
          data:{'tag':$('#tag').val(),'tagDesc':$('#tagDesc').val()},
          dataType:'json'
        }).done(function(data){
          if(data.type=='success'){
            $('#addNewTag').modal('hide');
            $.growl.success({title:'', message: data.msg ,location:'br'});
            window.location.reload(true);
          }
        });
      }

  });

$(document).ready(function(){
  $('select[name="colorpicker-modal-picker"]').simplecolorpicker({picker: true});
  loadGrid(limit,offset,false);
  //loadTimeLine(limitTL,offsetTL,false);

  $(document).on('click','.delete-tag-modal-btn',function(){
      currnet_document.id = $(this).data('tag_id');
      // console.log(currnet_document.id);
    });

  $(document).on('click','.delete-tag-btn',function(){
        $.ajax({
          url:'/dash/deleteTag',
          method:'post',
          data:{'id':currnet_document.id},
          dataType:'json'
        }).done(function(doc){
            // console.log(currnet_document.id);
            $('#deleteTag').modal('hide');
            $.growl.notice({title:'', message: doc.msg ,location:'br'});
            window.location.reload(true);
        });
        return false;
    });

 $('#datetimepicker').datetimepicker({
    sideBySide:true
 });



    var sb = $('.search-box').width();
    // sb/2;
    if(sb<768){
      $('#search_doc_title').css({'width':sb+'px'});
    }else{
      $('#search_doc_title').css({'width':sb/2+'px'});
    }

  $( window ).resize(function() {
    sb = $('.search-box').width();
    // sb/2;
    if(sb<768){
      $('#search_doc_title').css({'width':sb+'px'});
    }else{
      $('#search_doc_title').css({'width':sb/2+'px'});
    }
  });

  $('#search_doc_title').css({'background-color':'#FFF'});

  // $( 'textarea#content' ).ckeditor();
  // $("#").ClassyEdit();
  CKEDITOR.replace( 'content', {
    toolbar: 'Basic'
});
  $("#search-form").validate({
    submitHandler: function(form) {
      $.ajax({
        url:'/dash/searchDoc',
        method:'POST',
        data:$("#search-form").serialize(),
        dataType:'json'
      }).done(function(documents){
        $('.grid-wrap').scrollTop(0);
        if($('#search_doc_title').val()==""){
          limit = 20;
          offset = 0;
          loadGrid(limit,offset,false);
        }else{
          layout.formatGrid(documents,false,false);
        }

      });
    }
  });

  $(document).on('click','.do-refresh-btn',function(){
    layout.refresh();
  });

  $(document).on('click','.delete-doc-btn',function(){

      $.ajax({
        url:'/dash/deleteDoc',
        method:'post',
        data:{'id':currnet_document.id},
        dataType:'json'
      }).done(function(doc){
          $('#deleteDoc').modal('hide');
          $('#deleteDoc').modal('hide');
          $.growl.notice({title:'', message: doc.msg ,location:'br'});
          $('.slideshow').find('.nav-close').trigger('click');
          $('#link_g_id_'+currnet_document.id).remove();
          $('#link_s_id_'+currnet_document.id).remove();
          var gallery = new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
          gallery._init();
      });
      return false;
  });






});



  $('.grid-wrap').scroll(function (e) {20
    if($('.grid-wrap').scrollTop() === 0) {
      // console.log('it reaches the top!');
    }
    else if ($('.grid-wrap').scrollTop() === $('.grid-wrap')[0].scrollHeight - $('.grid-wrap')[0].clientHeight) {
      // console.log('it reaches the bottom!');
      offset = offset+20;
      limit = limit+20;
      loadGrid(limit,offset,true);
    }else {

    }
  });


  $(document).on('keyup','#privacy_unlocker',function(e){
    var privacy_doc_id = $(this).data('privacy_doc_id');
    if(e.which==13){
      $.ajax({
        url:'/dash/unlockDoc',
        type:'post',
        data:{'privacy_key':$(this).val()},
        dataType:'json'
      }).done(function(data){
        // console.log(data);
        if(data.type){
          $(privacy_edit_btn[privacy_doc_id]).insertBefore('.xavior_would_amaze');
          // console.log(privacy_username[privacy_doc_id]);
          if(privacy_username[privacy_doc_id]===undefined){
            // if(privacy_username[privacy_doc_id].length===0){
              var xrphtml = privacy_content[privacy_doc_id];
            // }
            
          }else{
            if(privacy_username[privacy_doc_id].length===0){
              var xrphtml = privacy_content[privacy_doc_id];
            }else{
              
            var xrphtml = privacy_content[privacy_doc_id]+
            '<br /><table style="font-size:13px">'+
              '<tr><td>Username</td><td>&nbsp;&nbsp;<input type="text" style="font-size:13px" value="'+privacy_username[privacy_doc_id]+'"/></td><td><button class="btn" data-clipboard-text="'+privacy_username[privacy_doc_id]+'"><span class="glyphicon glyphicon-copy"></span></button></td></tr>'+
              '<tr><td>Password</td><td>&nbsp;&nbsp;<input type="password" style="font-size:13px" value="'+privacy_xpassword[privacy_doc_id]+'"/></td><td><button class="btn" data-clipboard-text="'+privacy_xpassword[privacy_doc_id]+'"><span class="glyphicon glyphicon-copy"></span></button></td></tr>'+
            '</table>';
            }
          }
          $('#slideshow-figcontent_'+privacy_doc_id).html(xrphtml);
          var clipboard = new Clipboard('.btn');
        }
      });
    }
  });

  $('#privacy_toggle').bootstrapToggle({
    width:40,
    height:20
  });

  $(document).on('click','.btn-delete-doc',function(){
    currnet_document.id = $(this).data('doc_id');
  });


  $(document).on('click','.slide-close',function(){
    $('.slideshow').find('.nav-close').trigger('click');
    // layout.refresh();
  });

  $(document).on('click','.btn-edit-doc',function(){
    $('#addNewDocLabel').html('Edit Document');
    currnet_document.id = $(this).data('doc_id');




    $.ajax({
      url:'/dash/getDoc/'+currnet_document.id,
      dataType:'json'
    }).done(function(doc){
      var cts_row = new Date((doc.ts.gts)?doc.ts.gts:doc.ts.ts);
      var month =["January","February","March","April","May","June","July","August","September","October","November","December"];
      var cds = cts_row.getMonth() +'/'+ cts_row.getDate() +'/'+ cts_row.getFullYear();
      var cts = cts_row.getHours()+' : '+cts_row.getMinutes()+' : '+cts_row.getSeconds();

      $('input[name="title"]').val(doc.title);
      $('input[name="username"]').val(doc.username);
      $('input[name="xpassword"]').val(doc.xpassword);

      for(x in doc.tags){
        // console.log(doc.tags[x]);
      }
      $('#datetimepicker').data("DateTimePicker").date(cts_row);
      CKEDITOR.instances.content.setData(doc.content, function()
      {
          this.checkDirty();  // true
      });

      if(doc.privacy_toggle){
        $('#privacy_toggle').bootstrapToggle('on')
      }else{
        $('#privacy_toggle').bootstrapToggle('off')
      }
      // console.log(doc.tags);
      var x = 0;
      $('.tagsAdd').find('span').each(function(){
        // console.log($(this).html().toString()+" "+doc.tags[x]);
        // var a = doc.tags.indexOf($(this).html().toString());
        if(doc.tags===undefined){
          $(this).removeClass('active');
          $(this).addClass('inactive');
        }else if(doc.tags.indexOf($(this).html().toString())>=0){
          $(this).removeClass('inactive');
          $(this).addClass('active');
        }else{
          // console.log($(this).html().toString()=="Java");
          $(this).removeClass('active');
          $(this).addClass('inactive');
        }
        x++;
      });
      $('#colorpicker-modal-picker').find('option').each(function(e){
        if(doc.background==$(this).val()){
          $('#colorpicker-modal-picker').simplecolorpicker('selectColor', $(this).val());
        }
      });

    });
    // privacy_toggle
    $('input[name="id"]').val($(this).data('doc_id'));
    $('#addNewDocLabel').html('Edit Document');




  });

  $(document).on('click','.btn-add-doc',function(){
    document.getElementById('newDocForm').reset();

    $('#addNewDocLabel').html('Add New Document');
    CKEDITOR.instances.content.setData('', function()
    {
        this.checkDirty();  // true
    });
  });


function loadTimeLine(limitTL,offsetTL,appendTL){
  docs = [];
  // layout.loading('start');
  $.ajax({
    url:'/dash/getDocs/'+limitTL+'/'+offsetTL,
    dataType:'json'
  }).done(function(documents){
    // layout.loading('end');
    if(appendTL){
      layout.formatTimeline(documents,'add',false);
    }else{
      layout.formatTimeline(documents,false,false);
    }
  });
}






function loadGrid(limit,offset,append){
  docs = [];
  layout.loading('start');
  $.ajax({
    url:'/dash/getDocs/'+limit+'/'+offset,
    dataType:'json'
  }).done(function(documents){
    layout.loading('end');
    if(append){
      layout.formatGrid(documents,'add',false);
    }else{
      layout.formatGrid(documents,false,false);
    }
  });
}
var layout  = {
  formatGrid:function(doc,appendType,appendFront){
    var tline = '';
    var li_g  = '';
    var li_s  = '';
    var li_tags  = '';
    for(x in doc){
      // console.log(doc[x].tags);
      var title = doc[x].title;
      var content = doc[x].content;
      var username = doc[x].username;
      var xpassword = doc[x].xpassword;
      // console.log(username+"11111111");
      var cts_row = new Date((doc[x].ts.gts)?doc[x].ts.gts:doc[x].ts.ts);
      var id = doc[x]._id.$id;
      var cn_title = title.substr(0, 50);
      var cn_content = content.substr(0, 150);
      var month =["January","February","March","April","May","June","July","August","September","October","November","December"];
      var cds = cts_row.getFullYear()+' - '+month[cts_row.getMonth()]+' - '+cts_row.getDate();
      var cts = cts_row.getHours()+' : '+cts_row.getMinutes()+' : '+cts_row.getSeconds();

      // console.log(doc[x].ts.ts);
      // console.log(doc[x].content);
      if(title.length>50){
        cn_title = cn_title + '...'
      }

      if(content.length>50){
        cn_content = cn_content + '...'
      }
      // console.log(doc[x].privacy_toggle);

      for(ta in doc[x].tags){
        li_tags += '<span class="label label-default">'+doc[x].tags[ta]+'</span>';
      }

      if(doc[x].privacy_toggle){
        cn_content = '<span>Privacy Protected</span>';
        privacy_content[id] = content;
        privacy_username[id] = username;
        privacy_xpassword[id] = xpassword;
        content = '<div class="privacy_protected_label">'+
                    '&nbsp;&nbsp; Privacy Protected &nbsp;&nbsp;<a class="glyphicon glyphicon-lock privacy_lock"></a>'+
                    '<br/>'+
                    '<br/>'+
                    '<div class="form-group"><input type="password" class="form-control" autofocus data-privacy_doc_id="'+id+'" placeholder="Enter Privacy Code"  id="privacy_unlocker"/></div>'+
                    '</div>';
      }

        li_g += '<li id="link_g_id_'+id+'">'+
                  '<figure>'+
                    '<figcaption style="background-color:'+doc[x].background+';box-shadow:0px 0px 10px 1px rgba(0,0,0,0.3);">'+
                      '<div class="fig-title">'+cn_title+'</div>'+
                      '<div class="fig-content">'+cn_content.replace(/(<([^>]+)>)/ig,"")+'</div>'+
                      '<div class="fig-ts"><span>'+cds+'</span><span style="margin-left:50px;">'+cts+'</span></div>'+
                    '</figcaption>'+
                  '</figure>'+
                '</li>';


        li_s +='<li  id="link_s_id_'+id+'">'+
                '<button type="button" class="close slide-close" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
                  '<figure>'+
                    '<figcaption >'+
                      '<h4>'+title+'</h4>'+
                      '<hr />'+
                      '<div class="slideshow-figcontent" id="slideshow-figcontent_'+id+'">'+content+'</div>'+
                    '</figcaption>'+
                  '</figure>'+
                    '<div class="btn-group slide-btn-row" role="group">'+
                    '<div class="pull-left">'+
                      '<div class="fig-ts">Updated on <span style="margin-left:20px;">'+cds+'</span>  &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;<span>'+li_tags+'</span></div>'+
                    '</div>'+
                    '<div class="pull-right">';
      if(!doc[x].privacy_toggle){
        li_s +=     '<button type="button" data-toggle="modal" data-target="#addNewDoc" class="btn btn-primary btn-sm glyphicon glyphicon glyphicon-edit btn-edit-doc" data-doc_id="'+id+'"></button><button type="button" data-toggle="modal" data-target="#deleteDoc" class="btn btn-danger btn-sm glyphicon glyphicon-trash btn-delete-doc" data-doc_id="'+id+'"></button>';
      }else{
        privacy_edit_btn[id] = '<button type="button" data-toggle="modal" data-target="#addNewDoc" class="btn btn-primary btn-sm glyphicon glyphicon glyphicon-edit btn-edit-doc" data-doc_id="'+id+'"></button><button type="button" data-toggle="modal" data-target="#deleteDoc" class="btn btn-danger btn-sm glyphicon glyphicon-trash btn-delete-doc" data-doc_id="'+id+'"></button>';
      }
        li_s +=     '<span class="xavior_would_amaze"></span>'+
                    '</div>'+
                    '</div>'+
                '</li>';
      }



      if(appendType=='add'){
        if(appendFront){
          $(li_g).insertBefore('.grid>li:first-child');
          $(li_s).insertBefore('.slideshow>ul>li:first-child');
        }else{
          $('.grid').append(li_g);
          $('.slideshow').find('ul').append(li_s);
        }

      }else{
        $('.grid').html('');
        $('.grid').html(li_g);
        $('.slideshow').find('ul').html('');
        $('.slideshow').find('ul').html(li_s);
      }

    var gallery = new CBPGridGallery( document.getElementById( 'grid-gallery' ) );

    $('.grid-wrap').perfectScrollbar();
    $('.slideshow').find('.nav-close').css({'display':'none'});
  },
  formatTimeline:function(doc,appendType,appendFront){
    var tline = '';
    var div  = '';

    for(x in doc){
      var title = doc[x].title;
      var content = doc[x].content;
      var cts_row = new Date((doc[x].ts.gts)?doc[x].ts.gts:doc[x].ts.ts);
      var id = doc[x]._id.$id;
      var cn_title = title.substr(0, 50);
      var cn_content = content.substr(0, 150);
      var month =["Ja","Fe","Ma","Ap","Ma","Ju","Jl","Au","Se","Oc","Nv","Dc"];
      var xdate= cts_row.getDate();
      var xmonth= month[cts_row.getMonth()];
      var cds = cts_row.getFullYear()+' - '+month[cts_row.getMonth()]+' - '+cts_row.getDate();
      var cts = cts_row.getHours()+' : '+cts_row.getMinutes()+' : '+cts_row.getSeconds();

      // console.log(doc[x].ts.ts);
      // console.log(doc[x].content);
      if(title.length>30){
        cn_title = cn_title + '...';
      }
        div +='<div><div class="slick-slide-mini" data-title="'+title+'" data-tooltip="'+cn_title+'">'+xdate+'<br />'+xmonth+'<br /><span style="position:relative;left:-5px;">'+(cts_row.getFullYear()).toString()+'</span></div></div>';
      }

      $('.cst').html('');
      $('.cst').html(div);

      $('.cst').slick({
          infinite: true,
          slidesToShow: 25,
          slidesToScroll: 10,
          speed:1500
      });
       $('[data-tooltip!=""]').qtip({ // Grab all elements with a non-blank data-tooltip attr.
          content: {
              attr: 'data-tooltip' // Tell qTip2 to look inside this attr for its content
          },
          style: {
              classes: 'qtip-cluetip qtip-rounded'
          },
          position: {
              my: 'bottom center', // at the bottom right of...
              adjust: {
                  x: -20,
                  y:-60
              }
          }
      });

      $(document).on('click','.slick-slide-mini',function(){
        var search_q = $(this).data('title');
        $('#search_doc_title').val(search_q);
        $("#search-form").submit();
      })
  },
  refresh:function(){
    // console.log(1);
    document.getElementById('search-form').reset();
    limit = 20;
    offset = 0;
    loadGrid(limit,offset,false);
  },
  loading:function(state){
    if(state=='start'){
      $('<div class="ajax-loader"></div>').appendTo('.grid');
    }
    if(state=='end'){
      $('.ajax-loader').remove();
    }
  }
}