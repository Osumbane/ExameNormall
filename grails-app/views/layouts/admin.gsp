<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <title><g:layoutTitle default="YouVideo"/></title>
    <asset:stylesheet src="admin.css"/>
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
</head>

<body class="skin-black">
<header class="header">
    <a href="index.html" class="logo">
        IG SYS
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>

        <div class="navbar-right">
            <ul class="nav navbar-nav">
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-user"></i>
                        <span><sec:loggedInUserInfo field="username"/><i class="caret"></i></span>
                    </a>
                    <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                        <li>
                            <a href="/igsys/j_spring_security_logout"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
                        </li>
                        <li>
                            <g:link controller="utilizador" action="index">
                                <i class="fa fa-user fa-fw pull-right"></i>
                                Perfil
                            </g:link>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>
<div class="wrapper row-offcanvas row-offcanvas-left">
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="left-side sidebar-offcanvas">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <asset:image src="avatar04.png" alt="Sacur Ibraimo" class="img-circle" />
                </div>
                <div class="pull-left info">
                    <sec:ifLoggedIn>
                        <p>Ola <sec:loggedInUserInfo field="username"/></p>
                    </sec:ifLoggedIn>

                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search..."/>
                    <span class="input-group-btn">
                        <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li>
                    <g:link controller="pedido" action="index">
                        <i class="fa fa-shopping-cart"></i> <span>Pedidos</span>
                    </g:link>
                </li>
                <sec:ifAllGranted roles="ROLE_ADMIN">
                <li>
                    <g:link controller="cliente" action="index">
                        <i class="fa fa-users"></i> <span>Clientes</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="produto" action="index">
                        <i class="fa fa-archive"></i> <span>Produtos</span>
                    </g:link>
                </li>
                </sec:ifAllGranted>
                <li>
                    <g:link controller="utilizador" action="index">
                        <i class="fa fa-user"></i> <span>Utilizadores</span>
                    </g:link>
                </li>
                <li>
                    <a href="/igsys/j_spring_security_logout">
                        <i class="fa fa-ban"></i> <span>Logout</span>
                    </a>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <aside class="right-side">

        <!-- Main content -->
        <section class="content">
        <g:layoutBody/>
        </section><!-- /.content -->

    </aside><!-- /.right-side -->

</div><!-- ./wrapper -->
<div class="footer-main">
    Copyright &copy IG SYS, 2015
</div>

<!-- Director for demo purposes -->
<script type="text/javascript">
    $('input').on('ifChecked', function(event) {
        // var element = $(this).parent().find('input:checkbox:first');
        // element.parent().parent().parent().addClass('highlight');
        $(this).parents('li').addClass("task-done");
        console.log('ok');
    });
    $('input').on('ifUnchecked', function(event) {
        // var element = $(this).parent().find('input:checkbox:first');
        // element.parent().parent().parent().removeClass('highlight');
        $(this).parents('li').removeClass("task-done");
        console.log('not');
    });

</script>
<script>
    $('#noti-box').slimScroll({
        height: '400px',
        size: '5px',
        BorderRadius: '5px'
    });

    $('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey').iCheck({
        checkboxClass: 'icheckbox_flat-grey',
        radioClass: 'iradio_flat-grey'
    });
</script>
<script type="text/javascript">
    $(function() {
        "use strict";
        //BAR CHART
        var data = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
                {
                    label: "My First dataset",
                    fillColor: "rgba(220,220,220,0.2)",
                    strokeColor: "rgba(220,220,220,1)",
                    pointColor: "rgba(220,220,220,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(220,220,220,1)",
                    data: [65, 59, 80, 81, 56, 55, 40]
                },
                {
                    label: "My Second dataset",
                    fillColor: "rgba(151,187,205,0.2)",
                    strokeColor: "rgba(151,187,205,1)",
                    pointColor: "rgba(151,187,205,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(151,187,205,1)",
                    data: [28, 48, 40, 19, 86, 27, 90]
                }
            ]
        };
        new Chart(document.getElementById("linechart").getContext("2d")).Line(data,{
            responsive : true,
            maintainAspectRatio: false,
        });

    });
    // Chart.defaults.global.responsive = true;
</script>
</body>
</html>

