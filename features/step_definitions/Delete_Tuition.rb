
$size = 0
Given("User deletes a tutiton") do

  $size = $driver.find_elements(:xpath, "//table[@class='table']//tbody//tr").size

  $driver.find_element(:xpath, "//tr[1]//td[9]//a[1]").click()

  sleep(3)
  $driver.switch_to.alert.accept

  sleep(2)
end

Then('System verifies the delete is done successfully or not') do

  new_size = $driver.find_elements(:xpath, "//table[@class='table']//tbody//tr").size

  puts new_size
  puts $size

  if($size-1 == new_size)
    puts "Test Case Pass"

  else
    puts "Test Case Failed"
  end

end
