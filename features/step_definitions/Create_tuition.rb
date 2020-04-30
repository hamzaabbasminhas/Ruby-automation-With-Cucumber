Given("User login the application") do

$driver.find_element(:xpath, "//input[@id='exampleInputEmail1']").send_keys("hamza@gmail.com")
$driver.find_element(:xpath, "//input[@id='exampleInputPassword1']").send_keys("12345678")
$driver.find_element(:xpath, "//input[@id='exampleCheck1']").click
$driver.find_element(:xpath, "//button[@class='btn btn-primary']").click

end

Given("User clicks on create tuition button") do

  $driver.find_element(:xpath,"//a[contains(text(),'Create Tuition')]").click

end

Given("User enters all the details of tuition") do

  $driver.find_element(:xpath,"//input[@id='tuition_title']").send_keys("title")
  $driver.find_element(:xpath,"//textarea[@id='tuition_description']").send_keys("description")
  $driver.find_element(:xpath, "//input[@id='tuition_meeting_link']").send_keys("link")

  $driver.find_element(:xpath , "//select[@id='tuition_start_at_1i']//option[contains(text(),year)]").click()
  $driver.find_element(:xpath , "//select[@id='tuition_start_at_2i']//option[contains(text(),month)]").click()
  $driver.find_element(:xpath , "//select[@id='tuition_start_at_3i']//option[contains(text(),day)]").click()
  $driver.find_element(:xpath , "//select[@id='tuition_start_at_4i']//option[contains(text(),hour)]").click()
  $driver.find_element(:xpath , "//select[@id='tuition_start_at_1i']//option[contains(text(),minute)]").click()

  $driver.find_element(:xpath , "//select[@id='tuition_end_at_1i']//option[contains(text(),year)]").click()
  $driver.find_element(:xpath , "//select[@id='tuition_end_at_2i']//option[contains(text(),month)]").click()
  $driver.find_element(:xpath , "//select[@id='tuition_end_at_3i']//option[contains(text(),day)]").click()
  $driver.find_element(:xpath , "//select[@id='tuition_end_at_4i']//option[contains(text(),hour)]").click()
  $driver.find_element(:xpath , "//select[@id='tuition_end_at_5i']//option[contains(text(),minute)]").click()

  $driver.find_element(:xpath,"//div[@class='container']//div[1]").click

end


Given("User clicks on save") do

  $driver.find_element(:xpath,"//input[@name='commit']").click
  sleep(2)
  $driver.switch_to.alert.accept

end

Then("System verfies whether the tuition is created successfully or not") do

  if ($driver.find_elements(:xpath, "//h1[contains(text(),'Available Tuitions')]").size>0)
    puts 'Test Case Passed'
  else
    puts 'Test Case Failed'
  end

end
