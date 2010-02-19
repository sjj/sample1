<%@ include file="Header.jsp" %>

<script>
	var PStatus="0";
	var UsState="0";
	function callPieChart() {
		pentahoAction( "bi-developers", "amchart/PurchaseCount", "purchaseStatus.xaction", 
					new Array(), 
					'displayPieChart'
		);
	}
	function callGeoReport() {
		pentahoAction( "bi-developers", "amchart/PurchaseCount", "GeoReport.xaction", 
					new Array(), 
					'displayGeoReport'
		);
	}
	function callLineChart() {
		pentahoAction( "bi-developers", "amchart/PurchaseCount", "lineChart.xaction", 
					new Array(new Array( "P_STATUS", PStatus),new Array( "P_STATE", UsState)), 
					'displayLineChart'
		);
	}
	function displayPieChart(content) {
		document.getElementById('pieChart').innerHTML=content;
	}
	function displayGeoReport(content) {
		document.getElementById('geoReport').innerHTML=content;
	}
	function displayLineChart(content) {
		document.getElementById('lineChart').innerHTML=content;
		var title="Purchase details";
		if( PStatus != '0' && UsState != '0') {
			title += " - Status: " + PStatus + " & State: "+ UsState;
		} 
		else if ( PStatus != '0' && UsState == '0') {
			title += " - Status: " + PStatus;
		}
		else if ( PStatus == '0' && UsState != '0') {
			title += " - State: "+ UsState;
		}
		document.getElementById('rptTitle').innerHTML=title;
	}
	function OnPurchaseStatusEvent(status){
		PStatus=status;
		callLineChart();
	}
	function OnGeoEvent(state){
		UsState=state;
		callLineChart();
	}
	function load() {
		callPieChart();
		callGeoReport();
		callLineChart();
	}
	load();
</script>

<table class="homeDashboard" cellpadding="0" cellspacing="0" border="0" style="width:835px;" align="center">
	<tr>
		<td colspan="2"><h1>Purchase Count</h1></td>
	</tr>
	<tr>
		<td valign="top" align="center" style="width:350px;vertical-align: middle">
			<div style="border: 1px solid #859893;height: 300px;padding: 10px;" id="pieChart">
				<img src="mantle/large-loading.gif" style="padding-top: 100px;"/>
			</div>
		</td>
		<td valign="top" align="center">
			<div style="border: 1px solid #859893;height: 300px;padding: 10px;margin-left: 10px;" id="geoReport">
				<img src="mantle/large-loading.gif" style="padding-top: 100px;"/>
			</div>
		</td>
	</tr>
	<tr>
		<td valign="top" align="left" colspan="2" id="rptTitle" style="font-weight: bold;font-family: Arial;font-size: 12px;padding: 8px;">
		</td>
	</tr>
	<tr>
		<td valign="top" align="center" colspan="2" id="lineChart" style="border: 1px solid #859893;height: 300px;padding: 10px;">
			<img src="mantle/large-loading.gif" style="padding-top: 100px;"/>
		</td>
	</tr>
</table>
 		
<%@ include file="Footer.jsp" %>
