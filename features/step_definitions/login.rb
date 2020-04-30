Given(/^User enters login details$/) do
  $driver.find_element(:xpath, "//input[@id='exampleInputEmail1']").send_keys("hamza@gmail.com")
  $driver.find_element(:xpath, "//input[@id='exampleInputPassword1']").send_keys("12345678")
  $driver.find_element(:xpath, "//input[@id='exampleCheck1']").click

end

Given("User clicks on login") do
  $driver.find_element(:xpath, "//button[@class='btn btn-primary']").click
end

Then("System verifies the login is done successfully or not") do

  if ($driver.find_elements(:xpath, "//h1[contains(text(),'Available Tuitions')]").size>0)
    puts 'Test Case Passed'
  else
    puts 'Test Case Failed'
  end

end
