function initialiseMap(elem, lat, lng, address, zoom) {
  var center = { lat: lat, lng: lng };
  var map = new google.maps.Map(
    elem,
    { zoom: zoom, center: center, fullscreenControl: false, streetViewControl: false, draggable: false, backgroundColor: "#d1e6d9" }
  );
  new google.maps.Marker({ position: center, map: map, title: address });

  return map;
}

function initialisePano(elem, latitude, longitude, address) {
  // Can't yet figure out how to make the POV point at the marker
  var pointToLookAt = new google.maps.LatLng(latitude, longitude);
  var myPano = new  google.maps.StreetViewPanorama(elem,
    {position: pointToLookAt, navigationControl: false, addressControl: false, zoom: 0});
  google.maps.event.addListener(myPano, 'position_changed', function() {
    // Orient the camera to face the position we're interested in
    var angle = computeAngle(pointToLookAt, myPano.getPosition());
    myPano.setPov({heading:angle, pitch:0, zoom:1});
  });
  var panoMarker = new google.maps.Marker({position: pointToLookAt, title: address});
  panoMarker.setMap(myPano);
}

function computeAngle(endLatLng, startLatLng) {
  var DEGREE_PER_RADIAN = 57.2957795;
  var RADIAN_PER_DEGREE = 0.017453;

  var dlat = endLatLng.lat() - startLatLng.lat();
  var dlng = endLatLng.lng() - startLatLng.lng();
  // We multiply dlng with cos(endLat), since the two points are very closeby,
  // so we assume their cos values are approximately equal.
  var yaw = Math.atan2(dlng * Math.cos(endLatLng.lat() * RADIAN_PER_DEGREE), dlat)
    * DEGREE_PER_RADIAN;
  return wrapAngle(yaw);
}

function wrapAngle(angle) {
  if (angle >= 360) {
    angle -= 360;
  } else if (angle < 0) {
    angle += 360;
  }
  return angle;
}

function drawCircleOnMap(map, centre_lat, centre_lng, radius_in_metres) {
  return new google.maps.Circle({
    strokeColor: "#FF0000",
    strokeOpacity: 0.2,
    fillColor: "#FF0000",
    fillOpacity: 0.1,
    map: map,
    center: { lat: centre_lat, lng: centre_lng },
    radius: radius_in_metres,
  });
};

function initialiseMap2(map_div) {
  initialiseMap(
    map_div,
    Number(map_div.dataset.lat),
    Number(map_div.dataset.lng),
    map_div.dataset.address,
    Number(map_div.dataset.zoom)
  );
}

function initialisePano2(pano) {
  initialisePano(
    pano,
    Number(pano.dataset.lat),
    Number(pano.dataset.lng),
    pano.dataset.address
  );
}

function initialiseEditAlertMap(map_alert_radius) {
  var lat = Number(map_alert_radius.dataset.lat);
  var lng = Number(map_alert_radius.dataset.lng);
  var address = map_alert_radius.dataset.address;
  var zoom = Number(map_alert_radius.dataset.zoom);
  var radius_meters = Number(map_alert_radius.dataset.radiusMeters);

  var map = initialiseMap(map_alert_radius, lat, lng, address, zoom);

  var circle = drawCircleOnMap(map, lat, lng, radius_meters);
  document.querySelector(".sizes").addEventListener("change", function(e) {
    circle.setRadius(parseInt(e.target.value));
  });
}

function initialiseAlertMap(e) {
  var lat = Number(e.dataset.lat);
  var lng = Number(e.dataset.lng);
  var address = e.dataset.address;
  var zoom = Number(e.dataset.zoom);
  var radius_meters = Number(e.dataset.radiusMeters);
  var map = initialiseMap(e, lat, lng, address, zoom);

  drawCircleOnMap(map, lat, lng, radius_meters);
}

function initialiseGeocodingMap(map_div) {
  var googleLatLng = {lat: Number(map_div.dataset.googleLat), lng: Number(map_div.dataset.googleLng)};
  var mappifyLatLng = {lat: Number(map_div.dataset.mappifyLat), lng: Number(map_div.dataset.mappifyLng)};

  var map = new google.maps.Map(map_div, { zoom: 13, center: googleLatLng });

  // TODO: Generalise to any number of geocoder results

  var googleInfowindow = new google.maps.InfoWindow({
    content: map_div.dataset.googleHtml
  });

  var mappifyInfowindow = new google.maps.InfoWindow({
    content: map_div.dataset.mappifyHtml
  });

  var googleMarker = new google.maps.Marker({
    position: googleLatLng,
    map: map,
    title: 'Google',
    label: "G"
  });

  var mappifyMarker = new google.maps.Marker({
    position: mappifyLatLng,
    map: map,
    title: 'Mappify',
    label: "M"
  });

  googleMarker.addListener('click', function() {
    googleInfowindow.open(map, googleMarker);
  });

  mappifyMarker.addListener('click', function() {
    mappifyInfowindow.open(map, mappifyMarker);
  });
}

window.addEventListener("DOMContentLoaded", function() {
  // Map on the application page
  var map_div = document.querySelector("#map_div.application");
  if (map_div) initialiseMap2(map_div);

  // Streetview on the application page
  var pano = document.querySelector("#pano");
  if (pano) initialisePano2(pano);

  // Alert radius map on the edit alert page
  var map_alert_radius = document.querySelector("#map_div.alert-radius");
  if (map_alert_radius) initialiseEditAlertMap(map_alert_radius);

  document.querySelectorAll(".map").forEach(initialiseAlertMap);

  var map_div = document.getElementById('geocoding-map');
  if (map_div) initialiseGeocodingMap(map_div);
});
