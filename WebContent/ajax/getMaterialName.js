function GetXmlHttpObject() {
	var xmlHttp = null;
	try {
		xmlHttp = new XMLHttpRequest();
	} catch (e) {
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	return xmlHttp;
}

function GetMaterialNames() {
	xmlHttp = GetXmlHttpObject()
	// alert("in js get material name method");
	var name = document.getElementById("material_name").value;

	// alert(name);

	var url = "GetMaterialName?name=" + name;

	// alert(url);
	xmlHttp.onreadystatechange = stateChanged78964
	xmlHttp.open("GET", url, true);
	xmlHttp.send(null);

}

function stateChanged78964() {

	if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
		var showdata = xmlHttp.responseText;
		// alert(showdata);
		var array = showdata.split("::");
		var cnt = parseInt(array[0]);
		// alert(array[0]);

		// alert(showdata);
		if (cnt == 0) {
			// alert(cnt);
			// document.getElementById("btn").disabled = false;
			document.getElementById("folderwarning").style.display = 'none';
			// document.getElementById("btnSaveChanges").disabled = true;

		} else {
			// alert(cnt);
			// document.getElementById("btn").disabled = true;
			document.getElementById("folderwarning").style.display = 'block';
			// document.getElementById("btnSaveChanges").style.display =
			// 'block';
		}

	}
}