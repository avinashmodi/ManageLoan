$(document).ready(function () {

    $("#btnGetClientDetails").click(function () {

        $.ajax({
            type: "POST", 		//GET or POST or PUT or DELETE verb
            url: "InitiateLoan.aspx/btnGetClientDetails_Click", 		// Location of the service
            data: "", 		//Data sent to server
            contentType: 'application/json; charset=utf-8',		// content type sent to server
            dataType: "json", 	//Expected data format from server
            processdata: true, 	//True or False
            success: function (json) {//On Successful service call
                var result = json.name;
                alert("We returned: " + result);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            }
        });
    });
});