<cfparam name="pendingBookings">
<cfoutput>

#box(title=l("Pending Bookings"))#
<cfif pendingbookings.recordcount>
#paginationLinks()#
	<table id="bookingstable" class="table table-bordered table-striped">
	<thead>
	<tr>
		<th>#l("ID")#</th>
		<th>#l("Name")#</th>
		<th>#l("By")#</th>
		<th>#l("Where")#</th>
		<th>#l("Date")#</th>
		<th>#l("Actions")#</th>
	</tr>
	</thead>
	<tbody>
	<cfloop query="pendingbookings">
		<tr>
			<td>#ID#</td>
			<td>#title# <cfif isRepeat && len(repeatpattern)><i class="fa fa-refresh pull-right"></i></cfif></td>
			<td>#username#</td>
			<td><cfif len(buildingtitle)>#buildingtitle#</cfif><cfif len(roomtitle)><br /><small>#RoomTitle#</small></cfif></td>
			<th>#LSDateFormat(startUTC)#
			<cfif isallDay>(#l("All Day")#)<Cfelse>#LSTimeFormat(startUTC)#</cfif></th>
			<td>
			<div class="btn-group">
				#linkTo(route="editAdminBooking", key=id, text="<i class='fa fa-edit'></i> " & l("Edit"), class="btn btn-xs btn-flat btn-primary")#
			#linkTo(route="editAdminBooking", key=id, text="<i class='fa fa-check'></i> " & l("Approve"), class="btn btn-xs btn-flat btn-success")#
			#linkTo(route="editAdminBooking", key=id, text="<i class='fa fa-trash-o'></i> " & l("Deny"), class="btn btn-xs btn-flat btn-danger")#
			</div>
		</tr>
	</cfloop>
	</tbody>
	</table>
	#paginationLinks()#
<cfelse>
<p>#l("No outstanding pending bookings requiring approval")#</p>
</cfif>
#boxEnd()#
</cfoutput>