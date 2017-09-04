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

  <div class="row" style="margin-top:150px;height:50px;background:red;z-index:999999;"></div>
  <div class="row" style="height:500px;margin-top:-40px;z-index:-999;">
    <div class="col-md-12">
    
    <div class="timeline timeline-alternating timeline-with-arrows blue-blue-blue">
      <div class="timeline-block">
        <div class="timeline-icon timeline-icon-hide-border"><i class="fa fa-github fa-lg"></i></div>
        <div class="timeline-content">
          <p>Pushed up to <a href="https://github.com/andriussev/timelined">GitHub</a>.</p>
          <div class="timeline-date">2015-01-11</div>
        </div>
      </div>
      <div class="timeline-block">
        <div class="timeline-icon"></div>
        <div class="timeline-content">
          <h2>The start</h2>
          <p>From idea to execution.</p>
          <div class="timeline-date">2015-01-10</div>
        </div>
      </div>
      <div class="timeline-block">
        <div class="timeline-icon"><img src="http://lorempixel.com/100/100/"/></div>
        <div class="timeline-content">
          <h2>The start</h2>
          <p>From idea to execution.</p>
          <div class="timeline-date">2015-01-10</div>
        </div>
      </div>
      <div class="timeline-block">
        <div class="timeline-icon"><img src="http://lorempixel.com/100/100/"/></div>
        <div class="timeline-content">
          <h2>The start</h2>
          <p>From idea to execution.</p>
          <div class="timeline-date">2015-01-10</div>
        </div>
      </div>
  </div>

    </div>
  </div>
</div>