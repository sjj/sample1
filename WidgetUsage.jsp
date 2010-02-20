<%@ include file="Header.jsp" %>
<!-- ===== Test 11111 ===== -->
<script>
	function displayChart(content) {
		document.getElementById('reportData').innerHTML=content;
	}
	function load() {
		pentahoAction( "bi-developers", "widget", "widgetUsage.xaction", 
						new Array(), 
						'displayChart'
		);
	}
	load();
</script>

<table class="homeDashboard" cellpadding="0" cellspacing="0" border="0" style="width:750px;padding-left:60px;" align="center">
	<tr>
		<td valign="top" align="left" >
			<h1>Widget Usage - Aug to Oct</h1>
		</td>
	</tr>
	<tr>
		<td valign="top" align="center" id="reportData" style="padding-top: 10px;height: 520px;">
		</td>
	</tr>
</table>
 		
<%@ include file="Footer.jsp" %>