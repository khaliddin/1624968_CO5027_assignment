
function initMap() {
    var myLatLng = { lat: 4.885580, lng: 114.931590 };

    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 18,
        center: myLatLng
    });

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'JUBAH BAPAK'
    });
}





