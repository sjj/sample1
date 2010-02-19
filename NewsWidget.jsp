<%@ include file="Header.jsp" %>

<script>
	function displayChart(content) {
		document.getElementById('reportData').innerHTML=content;
	}
	function load() {
		pentahoAction( "bi-developers", "widget", "news.xaction", 
						new Array(), 
						'displayChart'
		);
	}
	load();
</script>

<table class="homeDashboard" cellpadding="0" cellspacing="0" border="0" style="width:950px;" align="center">
	<tr>
		<td valign="top" align="left" >
			<h1>News</h1>
		</td>
	</tr>
	<tr>
		<td valign="top" align="center" id="reportData" style="padding-top: 10px;height: 520px;">
		</td>
	</tr>
</table>
 		
<%@ include file="Footer.jsp" %>