
function initMap() {
    var latitude = { lat: 4.885580, lng: 114.931590 };

    var googleMap = new google.maps.Map(document.getElementById('map'), {
        zoom: 18,
        center: latitude
    });

    var marker = new google.maps.Marker({
        position: latitude,
        map: googleMap,
        title: 'JUBAH BAPAK'
    });
}





