Given(/^a user goes to show group page$/) do
  @browser.goto("https://study-group-finder-tulane.herokuapp.com/groups/13")
end
When(/^a user clicks 'join'$/) do
  @browser.text(:name, "Join" ).click – This will click "Join"
end
Then(/^the current user should be added to that group$/) do
  @browser.goto("https://study-group-finder-tulane.herokuapp.com/mygroups") 
end