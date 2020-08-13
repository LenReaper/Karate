Feature: RSA Api

Background:
	* configure ssl = true
	And param client_id = '692183103107-p0m7ent2hk7suguv4vq22hjcfhcr43pj.apps.googleusercontent.com'
	And param client_secret = 'erZOWM9g3UtwNRj340YYaK_W'
	And param redirect_uri = 'https://rahulshettyacademy.com/getCourse+.php'
	And param grant_type = 'authorization_code'

Scenario: Get the Access Token
	Given url 'https://www.googleapis.com/oauth2/v4/token?code=4%2F2gG8_p2wyKGJGsb0LLCFEHSRsyRgMVH1z_5WTmmqt_-vprb_Sb5Fl7-dCdo633IOMEN8nIOwNioj4z02BsVUCkQ'
	And request ''
	When method POST
	And print response
	Then status 200
	And def token = response.access_token
	And print token