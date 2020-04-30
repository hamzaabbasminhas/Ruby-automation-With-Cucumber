Given("User press logout button") do

  $driver.find_element(:xpath, "//a[contains(text(),'Logout')]").click


end

Then("System verifies the logout is done successfully or not") do


  actual = $driver.find_element(:xpath, " //h1[contains(text(),'Login')]").text
  flag = false
  if(actual == 'Login')
    flag = true
    puts "test case pass"
  else
    puts "test case fail"
  end



end

