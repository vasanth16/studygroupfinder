Given(/^a user goes to welcome page$/) do
  @browser.goto("https://study-group-finder-tulane.herokuapp.com/welcome/new")
end
When(/^a user clicks 'Sign in with Google'$/) do
  @browser.text(:name, "Sign in with Google" ).click
end
Then(/^the user will be signed in and taken to groups page$/) do
  @browser.goto("https://study-group-finder-tulane.herokuapp.com/groups") 
end