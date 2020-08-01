Feature: Getting token


Scenario: Get the course content
	Given url 'https://rahulshettyacademy.com/getCourse.php'
	And def result = call read('getAccessToken.feature')
	And print result.response.access_token
	And param access_token = result.response.access_token
	When method GET
	And print response
	And status 200
	And assert response.instructor == "RahulShetty"