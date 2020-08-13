Feature: Employee API

Background:
	* configure ssl = true
	
Scenario: Create employee data using rest
	Given url 'http://dummy.restapiexample.com/api/v1/create'
	And json req = '{    "status": "success",    "data": {        "name": "dev",        "salary": "29000",        "age": "26",        "id": 29    }}'
	And request req
	And print req
	When method Post
	And print response
	Then status 200
	
Scenario: Get single employee data
	Given url 'http://dummy.restapiexample.com/api/v1/employee'
	And path id = '20'
	And request ''
	When method Get
	And print response
	Then status 200	
	
Scenario: Get all employee data
	Given url 'http://dummy.restapiexample.com/api/v1/employees'
	And request ''
	When method Get
	And print response
	Then status 200	
	And assert response.data[13].employee_name == 'Haley Kennedy'
	
Scenario: Delete employee data
	Given url 'http://dummy.restapiexample.com/api/v1/delete'
	And path id = 24
	And request ''
	When method Delete
	And print response
	Then status 200
	
Scenario: Update employee data
	Given url 'http://dummy.restapiexample.com/api/v1/update'
	And path id = 24
	And json req = '{"id":"24","employee_name":"Irene Adler","employee_salary":"10500","employee_age":"26","profile_image":""}'
	And request req
	And print req
	When method Put
	And print response
	Then status 200
	