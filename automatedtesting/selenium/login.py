# #!/usr/bin/env python
from selenium import webdriver
from selenium.webdriver.chrome.options import Options as ChromeOptions
import time


# Start the browser and login with standard_user
def login (user, password):
    print ('Starting the browser...')
    # --uncomment when running in Azure DevOps.
    # options = ChromeOptions()
    # options.add_argument("--headless") 
    # driver = webdriver.Chrome(options=options)
    driver = webdriver.Chrome()
    print ('Browser started successfully. Navigating to the demo page to login.')
    
    print ('Logging in as:', user)
    driver.get('https://www.saucedemo.com/')

    # Find the username and password input fields and enter the credentials
    username_input = driver.find_element_by_css_selector('input#user-name')
    password_input = driver.find_element_by_css_selector('input#password')
    username_input.send_keys(user)
    password_input.send_keys(password)

    # Find and click the login button
    login_button = driver.find_element_by_css_selector('input#login-button')
    login_button.click()

    # Check if login was successful (for demonstration purposes)
    if 'inventory.html' in driver.current_url:
        print('Logged in successfully.')
    else:
        print('Login failed.')

# Usage
login('standard_user', 'secret_sauce')