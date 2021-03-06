<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Raleway:600"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>

<title>Movie Rank</title>
<script type="text/javascript">
	var app = angular.module("MovieManagement", []);

	//Controller Part
	app.controller("MovieController", function($scope, $http) {

		$scope.movies = [];
		$scope.movieForm = {
			title : "",
			listGenres : "",
			yearStart : "",
			yearEnd : "",
			rateStart : "",
			rateEnd : "",
			voteStart : "",
			voteEnd : "",
		};


		function _success(response) {
			_clearFormData()
		}

		function _error(response) {
			console.log(response.statusText);
		}

		//Clear the form
		function _clearFormData() {
			$scope.movieForm.title = "";
			$scope.listGenres = "";
			$scope.yearStart = "";
			$scope.yearEnd = "";
			$scope.rateStart = "";
			$scope.rateEnd = "";
			$scope.voteStart = "";
			$scope.voteEnd = "";
		}
		;

		$scope.submitMovie = function() {
			$http({
				method : 'GET',
				url : 'http://localhost:8080/frontEnd/getListMovieDiscovery',
			}).then(function successCallback(response) {
				$scope.movies = response.data;
			}, function errorCallback(response) {
				console.log(response.statusText);
			});
		}
	});
</script>
<style type="text/css">
.blue-button {
	background: #25A6E1;
	padding: 3px 10px; color : #fff; font-family : 'Raleway';
	border-radius: 2px;
	-moz-border-radius: 2px;
	-webkit-border-radius: 4px;
	border: 1px solid #1A87B9;
	color: #fff;
	font-family: 'Raleway';
}

.red-button {
	background: #CD5C5C;
	padding: 3px 5px;
	color: #fff;
	font-family: 'Helvetica Neue', sans-serif;
	font-size: 12px;
	border-radius: 2px;
	-moz-border-radius: 2px;
	-webkit-border-radius: 4px;
	border: 1px solid #CD5C5C
}

body {
	font-family: "Raleway";
	padding-left: 20%;
	padding-right: 20%;
	background-color: gray;
}

h1 {
	text-align: center;
}

.busca {
	margin-bottom: 1%;
}

.discovery {
	border: 1px solid;
	margin-bottom: 1%;
}

.espacoBuscaTitle {
	margin-top: 5%; 
	margin-bottom: 3%;
}

.title {
	border-radius: 4px;
	border: 1px solid #000000;
	width: 40%;
	margin-right: 1%;
	margin-left: 1%;
}

table {
	align-content: "center";
	width: 100%;
}

caption {
	text-align: left;
	color: silver;
	font-weight: bold;
	text-transform: uppercase;
	padding: 5px;
}

th {
	background: SteelBlue;
	color: white;
	text-align: center;
}

tbody tr:nth-child(even) {
	background: WhiteSmoke;
}

tbody tr td:nth-child(2) {
	text-align: center;
}

tbody tr td:nth-child(3), tbody tr td:nth-child(4) {
	text-align: center;
	font-family: monospace;
}

tfoot {
	background: SeaGreen;
	color: white;
	text-align: right;
}

tfoot tr th:last-child {
	font-family: monospace;
}

td, th {
	border: 1px solid gray;
	width: 25%;
	text-align: left;
	padding: 5px 10px;
}
</style>
</head>
<body ng-app="MovieManagement" ng-controller="MovieController">
	<h1>Movie Rank</h1>
	<div>
		<div class="busca espacoBuscaTitle">
			<form ng-submit="submitMovie()">
				Title: <input type="text" class="title" value=""
					ng-model="movieForm.title"> <input type="submit"
					value="Search" class="blue-button">
			</form>
		</div>
		<div class="discovery">
			<form ng-submit="submitMovie()">
				Genres: <input type="text" value="" ng-model="movieForm.listGenres">
				<br /> Year greater than: <input type="text" value=""
					ng-model="movieForm.yearStart"> Year lower than: <input
					type="text" value="" ng-model="movieForm.yearEnd"> <br />
				Imdb Rate greater than: <input type="text" value=""
					ng-model="movieForm.rateStart"> Imdb Rate lower than: <input
					type="text" value="" ng-model="movieForm.rateEnd"> <br />
				Imdb Votes greater than: <input type="text" value=""
					ng-model="movieForm.voteStart"> Imdb Votes lower than: <input
					type="text" value="" ng-model="movieForm.voteEnd"> <input
					type="submit" value="Discovery" class="red-button">
			</form>
		</div>
	</div>
	<div>
		<table>
			<tr>

				<th>Title</th>
				<th>Imdb Rate</th>
				<th>Imdb Votes</th>
				<th>Year</th>
				<th>Genres</th>

			</tr>
			<tr ng-repeat="movie in movies">

				<td>{{ movie.title }} <img
					src= ""{{ movie.poster }} />

				</td>
				<td>{{ movie.imdbRating }}</td>
				<td>{{ movie.imdbVotes }}</td>
				<td>{{ movie.year }}</td>
				<td>{{ movie.listGenres }}</td>

			</tr>
		</table>
	</div>
</body>
</html>
