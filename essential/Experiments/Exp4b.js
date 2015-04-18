
                
               var URL = "http://api.worldweatheronline.com/free/v2/weather.ashx?q=CITY&format=json&num_of_days=1&key=ebf7aa9559cb1e9917c55be599669";
                
function weather($scope, $http) {
    $scope.getweather = function () {
        var address = URL.replace("CITY", $scope.cityname);
        $http.get(address).success(function (response) {
            $scope.Weather = response.data.weather;
            console.log($scope.Weather);
        });
    }
}
