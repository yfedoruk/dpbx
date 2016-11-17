<form ng-submit="select()" >
	<ul>
		<li><input type="radio" name="category" value="animals" ng-model="category.animals" />Animals</li>
		<li><input type="radio" name="category" value="creation" ng-model="category.creation" />Arts</li>
		<li><input type="radio" name="category" value="auto" ng-model="category.auto" />Auto-Moto</li>
		<li><input type="radio" name="category" value="people" ng-model="category.people" />Celeb</li>
		<li><input type="radio" name="category" value="school" ng-model="category.school" />College</li>
		<li><input type="radio" name="category" value="fun" ng-model="category.fun" />Funny</li>
		<li><input type="radio" name="category" value="videogames" ng-model="category.videogames" />Gaming</li>
		<li><input type="radio" name="category" value="lifestyle" ng-model="category.lifestyle" />Lifestyle</li>
		<li><input type="radio" name="category" value="shortfilms" ng-model="category.shortfilms" />Movies</li>
		<li><input type="radio" name="category" value="music" ng-model="category.music" />Music</li>
		<li><input type="radio" name="category" value="news" ng-model="category.news" />News</li>
		<li><input type="radio" name="category" value="sexy" ng-model="category.sexy" />Sexy</li>
		<li><input type="radio" name="category" value="sport" ng-model="category.sport" />Sport</li>
		<li><input type="radio" name="category" value="tech" ng-model="category.tech" />Tech</li>
		<li><input type="radio" name="category" value="travel" ng-model="category.travel" />Travel</li>
		<li><input type="radio" name="category" value="webcam" ng-model="category.webcam" />Webcam &amp; Vlogs</li>
	</ul>
	<input type="submit" id="dm_categories" value="Select" />
</form>


$scope.category = {};

// log