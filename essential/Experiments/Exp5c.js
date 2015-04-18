
        function initialize() {
            var mapProp = {
                center: new google.maps.LatLng(42.3600825, -71.0588801),
                zoom: 9,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var mapProp2 = {
                center: new google.maps.LatLng(42.3600825, -71.0588801),
                zoom: 9,
                mapTypeId: google.maps.MapTypeId.SATELLITE
            };
            var mapProp3 = {
                center: new google.maps.LatLng(42.3600825, -71.0588801),
                zoom: 9,
                mapTypeId: google.maps.MapTypeId.HYBRID
            };
            var mapProp4 = {
                center: new google.maps.LatLng(42.3600825, -71.0588801),
                zoom: 9,
                mapTypeId: google.maps.MapTypeId.TERRAIN
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
            var map2 = new google.maps.Map(document.getElementById("googleMap2"), mapProp2);
            var map3 = new google.maps.Map(document.getElementById("googleMap3"), mapProp3);
            var map4 = new google.maps.Map(document.getElementById("googleMap4"), mapProp4);
        }

google.maps.event.addDomListener(window, 'load', initialize);
