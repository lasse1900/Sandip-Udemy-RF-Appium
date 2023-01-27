# Sandip-Udemy-RF-Appium

[Mobile Test Automation - Robot Framework, Python & Appium](https://www.udemy.com/course/be-expert-in-device-automation-with-robot-framework-python/)

-	robot -d Report Directory/Test_file.robot
-	npm install -g appium --chromedriver-skip-install
-	appium --version
-	appium -p 4728 -bp 4729 -U <DeviceID>
-	appium -p 4728 -bp 4729 -U R58N40PQA1D
-	http://127.0.0.1:4728/wd/hub/sessions
-	http://127.0.0.1:4723/wd/hub/sessions   if Appium desktop serverused
-	npx kill-port <port#> example 4723   = Appium default port

## Lesson 9 
-   Start appium server before running / starting tests (27.01.2023)
-   pabot --pabotlib --resourcefile ./Library/Resource/shared_resource --processes 1 --outputdir result Test/

