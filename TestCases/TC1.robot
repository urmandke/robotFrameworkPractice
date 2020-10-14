*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${driver_path}   "/home/udayraj/robotFrameworkPractice/Driver/chromedriver"
${browser}  chrome
# Main page links
${login_link}  //a[@class='ico=login']

*** Test Cases ***
LoginTest
    create webdriver  ${browser}  executable_path=${driver_path}
    open browser  https://demo.nopcommerce.com  chrome
    click link  xpath://a[@class='ico=login']
    input text  id:Email  pavanoltraining@gmail.com
    input text  id:Password  Test@123
    click element  xpath://[@type ='submit']
    close browser





*** Keywords ***

