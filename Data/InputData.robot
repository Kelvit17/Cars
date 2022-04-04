
*** Variables ***
# Configuration
${BROWSER} =  edge
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com
${LOGIN_URL} =  signin/

# Input Data
&{UNREGISTERED_USER}  Email=admin@robotframeworktutorial.com  Password=TestPassword!  ExpectedErrorMessage=We were unable to sign you in.
&{INVALID_PASSWORD_USER}  Email=bryan@bryanlamb.com  Password=TestPassword!  ExpectedErrorMessage=We were unable to sign you in.
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=We were unable to sign you in.