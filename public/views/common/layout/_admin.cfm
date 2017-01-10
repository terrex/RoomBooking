<!---================= Room Booking System / https://github.com/neokoenig =======================--->
<cfoutput>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <!---cfif len(request.pagetitle)>
        <h1>#request.pagetitle#</h1>
      </cfif--->
      <!---ol class="breadcrumb">
        <li><a href=""><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol--->
    </section>

    <section class="content">

    <!-- Main content -->
<div class="box box-default">
	<div class="box-body ">
		 <ul class="nav navbar-nav">

    #sidebarlink(permission="accessSettings", controller="admin.admin", route="adminIndex", icon="fa-dashboard", text="Dashboard")#
		#sidebarlink(permission="accessBookings", controller="admin.bookings", route="adminBookings", icon="fa-list", text="Bookings")#
		#sidebarlink(permission="accessUsers", controller="admin.users", route="adminUsers", icon="fa-users", text="Users")#
    <li class="dropdown">
                <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><i class='fa fa-cog'></i> #l("Setup")# <span class="caret"></span></a>
                <ul class="dropdown-menu">
    #sidebarlink(permission="accessSettings", controller="admin.calendars", route="adminCalendars", icon="fa-calendar", text="Calendars")#
    #sidebarlink(permission="accessBuildings", controller="admin.buildings", route="adminBuildings", icon="fa-building-o", text="Buildings")#
    #sidebarlink(permission="accessRooms", controller="admin.rooms", route="adminRooms", icon="fa-square-o", text="Rooms")#
    #sidebarlink(permission="accessResources", controller="admin.resources", route="adminResources", icon="fa-laptop", text="Resources")#
                  <li role="separator" class="divider"></li>
    #sidebarlink(permission="accessSettings", controller="admin.settings", route="adminSettings", icon="fa-cog", text="Settings")#
    #sidebarlink(permission="accessPermissions", controller="admin.permissions", route="adminPermissions", icon="fa-cog", text="Permissions")#
                </ul>
              </li>
		#sidebarlink(permission="accessLogs", controller="admin.logs", route="adminLogs", icon="fa-list", text="Logs")#
		#sidebarlink(permission="accessSettings", controller="admin.dump", route="adminDumpIndex", icon="fa-list", text="Dump")#
		</ul>
	</div>
</div>
      <!-- Your Page Content Here -->
	  #flashMessages()#
	  #includeContent()#

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</cfoutput>