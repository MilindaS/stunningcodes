<body class="theme-red">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="md-preloader pl-size-md">
                
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="site-logo-2" ><span style="color: #30B5FF !important;">Stunning </span> Codes</div>
                <div class="search-box">
                <form class="form-inline" id="search-form" method="post" action="">
                    <div class="form-group input-group stylish-input-group pull-left" style="margin-right:10px;">
                        <input type="text" class="form-control"  placeholder="Find Something..."  name="search_doc_title" id="search_doc_title" placeholder="Search" data-provide="typehead">
                        <span class="input-group-addon">
                            <button type="submit" style="">
                                <!-- <span class="glyphicon glyphicon-search" style="color:#ADB4C2;"></span> -->
                                <i class="material-icons" style="color:#ADB4C2;">search</i>
                            </button>  
                        </span>
                    </div>
                  </form>
                </div>
            </div>
            
            <div class="collapse navbar-collapse collapsed" id="navbar-collapse" style="margin-top:0px;">
                <ul class="nav navbar-nav navbar-right" style="margin:0px;padding:0px;margin-top:-5px">
                    <li>
                       <a style="font-size:15px;color:#579FFF;padding:8px;"  href="#" class="pull-right btn-add-doc" data-toggle="modal" data-target="#addNewDoc"><i class="material-icons">note_add</i></a>
                    </li>





                    <li class="dropdown"> <a href="#" class="dropdown-toggle" id="drop2" style="font-size:15px;color:#AAA;padding:8px;" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 
                    <i class="material-icons">reorder</i></a> 
                    <ul class="dropdown-menu" aria-labelledby="drop2">
                        <li><a href="/dash"><i class="material-icons">screen_share</i>&nbsp;&nbsp;&nbsp;Dashboard</a></li> 
                        <li><a href="/dash/calendar"><i class="material-icons">today</i>&nbsp;&nbsp;&nbsp;Calendar</a></li> 
                        <li><a href="/dash/tagEdit"><i class="material-icons">turned_in</i>&nbsp;&nbsp;&nbsp;Tag Editor</a></li> <li role="separator" class="divider"></li> 
                        <li><a href="<?php echo BASEURL;?>auth/doSiginout"><i class="material-icons">exit_to_app</i>&nbsp;&nbsp;&nbsp;Sign Out</a></li> 
                    </ul> 
                    </li>
                   
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="<?php echo base_url(); ?>/public/dist/images/admin.jpg" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">John Doe</div>
                    <div class="email">john.doe@example.com</div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">MAIN NAVIGATION</li>
                    <li class="active">
                        <a href="/dash" class="active">
                            <i class="material-icons" style="margin-top:10px;float:left;font-size:18px;color:#CCC;text-shadow:0px 0px 1px black;">desktop_windows</i><span>&nbsp;Dashboard</span>
                        </a>
                    </li>
                    <li>
                    	<a href="/dash/calendar">
                        	<i class="material-icons" style="margin-top:10px;float:left;font-size:18px;color:#CCC;text-shadow:0px 0px 1px black;">today</i><span>&nbsp;Calendar</span>
                        </a>
                    </li>
                    <li>
                    	<a href="/dash/tagEdit">
                        	<i class="material-icons" style="margin-top:10px;float:left;font-size:18px;color:#CCC;text-shadow:0px 0px 1px black;">turned_in</i><span>&nbsp;Tag Editor</span>
                        </a>
                    </li>
                    
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright" style="color:#AAA;">
                    <b>Stunning Codes</b>&nbsp;&copy; 2016 All Rights reserved.
                </div>
               
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
        <!-- Right Sidebar -->
        <!-- #END# Right Sidebar -->
    </section>