import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');





  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const lat = mapElement.dataset.lat;
  const lng = mapElement.dataset.lng;
  const map = new mapboxgl.Map({
    container: 'map',
    center: [lng, lat],
    style: 'mapbox://styles/mapbox/streets-v10',
    zoom: 15
  });

  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
   const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
   new mapboxgl.Marker()
   .setLngLat([ marker.lng, marker.lat ])
   .setPopup(popup)
   .addTo(map);
 });

  fitMapToMarkers(map, markers);
}
};

export { initMapbox };
