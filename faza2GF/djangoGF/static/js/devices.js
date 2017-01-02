/**
 * Created by Domen on 11. 11. 2016.
 */
function selectDevice(row) {

    var index = row.rowIndex;
    var devices = document.getElementsByClassName("device");
    var ranking = document.getElementsByClassName("top10Devices")[0].getElementsByTagName("tr");

    for(i=0; i<devices.length; i++) {
        if(i != index) {
            devices[i].style.display = "none";
            ranking[i].className = "";
        } else {
            devices[i].style.display = "inline";
            ranking[i].className = "selectedDevice";
        }
    }

}
