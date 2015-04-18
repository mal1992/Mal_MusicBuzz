
var app = angular.module("instantSearch", []);



app.filter('searchFor', function(){

	return function(arr, searchString){
		if(!searchString){
			return arr;
		}
		var result = [];
		searchString = searchString.toLowerCase();
		angular.forEach(arr, function(item){
		    if (item.title.toLowerCase().indexOf(searchString) !== -1) {
		        result.push(item);
		    }
		});
		return result;
	};
});



function InstantSearchController($scope){

	

	$scope.items = [
		{
		    url: 'https://www.petfinder.com',
			title: 'Want to Find pets online ? Search for a companion easily',
			image: '../images/4.jpg'
		},
		{
		    url: 'http://www.adoptapet.com',
			title: 'Adopt Pets online, Give home to many abandoned Pets',
			image: '../images/2.jpg'
		},
		{
		    url: 'https://www.aspca.org/adopt/adoptable-dogs-your-local-shelter',
		    title: 'Adoptable Dogs in Your Local Shelter',
		    image: '../images/3.jpg'
		},
		{
		    url: 'http://www.petango.com',
		    title: 'Finding Pets Their Forever Home.',
		    image: '../images/4.jpg'
		},
		{
		    url: 'http://www.petsmart.com/live-pet/live-small-pets/cat-36-catid-700004',
			title: 'Buy any kind of Hamsters,dogs,cats and make it a perfect gift for your children/grandchildren',
			image: '../images/5.jpg'
		}
		
	];

}