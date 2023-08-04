# #!/usr/bin/env python
from selenium import webdriver
from selenium.webdriver.chrome.options import Options as ChromeOptions
import time


# Start the browser and login with standard_user
def login (user, password):
    print ('Starting the browser...')
    # --uncomment when running in Azure DevOps.
    options = ChromeOptions()
    options.add_argument("--headless") 
    driver = webdriver.Chrome(options=options)
    # driver = webdriver.Chrome()
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
    
    # Add all products to the cart
    print ('Adding all items to cart.')
    add_to_cart_buttons = driver.find_elements_by_css_selector('button.btn_inventory')
    for button in add_to_cart_buttons:
        button.click()

    # Add wait time for all items to be added to cart
    print ('Adding wait time to ensure all items get added.')
    time.sleep(2)

    # Check if six items were added to shopping cart
    shopping_cart_badge = driver.find_element_by_css_selector('span.shopping_cart_badge')
    num_items_in_cart = int(shopping_cart_badge.text)
    if num_items_in_cart == 6:
        print('All products added to the cart successfully.')
    else:
        print('Failed: Expected 6 items in cart, but found {num_items_in_cart} items.')

    # Click on the cart icon
    print ('Clicking on the cart icon.')
    cart_icon = driver.find_element_by_css_selector('a.shopping_cart_link')
    cart_icon.click()

    # Remove all items from the cart
    print ('Removing all items from cart.')
    remove_buttons = driver.find_elements_by_css_selector('button.cart_button')
    for button in remove_buttons:
        button.click()

    # Wait for a short time to ensure all items are removed from the cart
    print ('Adding wait time to ensure all items get removed.')
    time.sleep(2)

    # Check if the shopping cart is empty after removing items
    cart_icon = driver.find_element_by_css_selector('a.shopping_cart_link')
    if cart_icon.text.strip() == "":
        print('All items removed from the cart successfully.')
    else:
        print('Failed: Shopping cart is not empty. Found {cart_icon.text.strip()} items.')

    print ('Test completed successfully. Closing the browser.')
    driver.quit()  

# Usage
login('standard_user', 'secret_sauce')