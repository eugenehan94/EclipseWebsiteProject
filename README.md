# Eclipse Website Project

This project is created with Java servlets, JSP, JSTL, CSS and mySQL.

This website allows the user to either login or sign-up initially. Since the database information is empty, it is recommanded to sign-up first. The signup page will ask for a username, password and telephone number and to select the checkbox to agree with the terms and conditions. The telephone number is separated by area code in one textbox and the other textbox for the rest of the number. 
Once the user(s) are registered successfully, they would be re-directed to the login page to login. If the user forgets their password, there is a hyperlink to reset it, as long as they input the correct username and telephone number.
Once logged in, it welcomes the user by the username. 


Whenever the user(s) logs in, resets their password and registers incorrectly, a red popup message will advise so and when the same page is refreshed the popup will disappear.


Notes:
I didn't convert this project the maven because I wanted to find the required dependency and JAR files. These files are included in the repository.
I also included the scriptlet and JSTL tags, both styles function the same way, and one could be removed. Although, using scriptlet is not recommended anymore, I just wanted to test it out because it allows the usage of the core Java concept.


