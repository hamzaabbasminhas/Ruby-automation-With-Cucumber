require 'selenium-webdriver'

Before do

  Selenium::WebDriver::Firefox::Service.driver_path='/Users/apple/Downloads/geckodriver'
  #    $config = YAML.load_file'../Configuration/config.yml'
  $driver = Selenium::WebDriver.for :firefox
  $driver.manage.timeouts.implicit_wait = 7
  $driver.manage.window.maximize()
  $driver.navigate.to('http://localhost:3000/login')

end

