Given(/^I'm on the home page$/) do
  visit('/users/new')
  
end
When(/^I submit the login form$/) do
  fill_in 'username', :with => "shreyap"
  fill_in 'password', :with => "kuchbhi"
  click_button 'Log In'
end

Then(/^I should be able to see the login successful page$/) do
  assert page.has_content?("Welcome")
end

When(/^I click on sign up$/) do
  click_link 'New User? Sign Up!'
end

Then(/^I should be able to see the new user page$/) do
  assert page.has_content?("username")
end

When(/^I search for an artist$/) do
  click_button 'Search!'
end

Then(/^I should be able to see the artist details page$/) do
  assert page.has_content?("DETAILS")
end



