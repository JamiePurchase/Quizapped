component
{
	this.datasource="standbyList";
	this.sessionManagement=true;

	function onRequest(thePage)
	{
		// Datasource
		application.dsn="";
    	
		include "#arguments.thePage#";
	}
}