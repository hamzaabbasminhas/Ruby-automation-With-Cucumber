require 'selenium-webdriver'
require '/Users/apple/eclipse-workspace/Automation_Cucumber/PageObjects/Signup_Objects'
require '/Users/apple/eclipse-workspace/Automation_Cucumber/Assertions/assert_sign_up'

class A
  @signupObject = SignupObjects.new($driver)
end
Given(/^User clicks on sign up button$/) do

  $driver.find_element(:xpath, "//a[contains(text(),'Signup')]").click()
end

Given(/^User enters all details in sign up form$/) do

  $driver.find_element(:xpath, "//input[@id='user_name']").clear()
  $driver.find_element(:xpath, "//input[@id='user_name']").send_keys('username')

  $driver.find_element(:xpath, "//input[@id='user_email']").clear()
  $driver.find_element(:xpath, "//input[@id='user_email']").send_keys('email@gmail.com')

  $driver.find_element(:xpath, "//input[@id='user_password']").clear()
  $driver.find_element(:xpath, "//input[@id='user_password']").send_keys("password")

  $driver.find_element(:xpath, "//input[@id='user_password_confirmation']").clear()
  $driver.find_element(:xpath, "//input[@id='user_password_confirmation']").send_keys("password")

  $driver.find_element(:xpath, "//input[@id='user_linked_in']").clear()
  $driver.find_element(:xpath, "//input[@id='user_linked_in']").send_keys("www.linkedInURL.com")

  $driver.find_element(:xpath, "//input[@id='user_twitter']").clear()
  $driver.find_element(:xpath, "//input[@id='user_twitter']").send_keys("www.twitter.com")

  $driver.find_element(:xpath, "//input[@id='user_verified']").click()

  $driver.find_element(:xpath, "//input[@id='user_premium']").click()

  $driver.find_element(:xpath, "//input[@name='commit']").click()



end

Given(/^System verifies that sign up is successful$/) do

  if ($driver.find_elements(:xpath, "//h1[contains(text(),'Available Tuitions')]").size>0)
    puts 'Test Case Pass'
  else
    puts 'Test Case failed'
  end


end


