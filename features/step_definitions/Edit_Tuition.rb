
Given("User Clicks on edit button of a tuition") do

  $driver.find_element(:xpath, "//tr[1]//td[8]//a[1]").click
end

Given("User edits title of the tuition") do

  $driver.find_element(:xpath,"//input[@id='tuition_title']" ).clear
  $driver.find_element(:xpath, "//input[@id='tuition_title']").send_keys("edit")

end

Given("User press save button") do

  $driver.find_element(:xpath,"//input[@name='commit']").click()

  sleep(3)
  $driver.switch_to.alert.accept()

end

Then("System verifies whether Title is edited or not") do

  actual = $driver.find_element(:xpath, "/html[1]/body[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]").text
  flag = false
  if(actual == "edit")

    flag = true

    puts "Test case Pass"

else
  puts "Test case fail"
  end




end