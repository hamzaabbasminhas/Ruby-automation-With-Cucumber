Given("User clicks on show button") do

  $driver.find_element(:xpath, "//tr[1]//td[7]//a[1]").click



end

Then("System verfies the right deatils of tuition are displayed or not") do

  actual = $driver.find_element(:xpath, "//b[contains(text(),'Title:')]").text

  if(actual == "Title:")

    puts "Test case pass"

  else
    puts "Test case fail"
  end


end

