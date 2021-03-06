Given(/^I'm on the artist details page$/) do
  visit('/music_grocery/index')
  fill_in 'search_name', :with => "Cher"
  click_button 'Search!' 
end

When(/^I click on View Biography$/) do
  click_button 'View Biography'
end

Then(/^I should be able to see the artist biography$/) do
  assert page.has_content?("Name")
end

When(/^I click on View Album$/) do
  click_button "Top Albums"
end

Then(/^I should be able to see the artist top albums$/) do
  assert page.has_content?("Top Albums")
end

When(/^I press View Event$/) do
  click_button "View Event"
end

Then(/^I should be able to see the artist past events$/) do
  assert page.has_content?("Title")
end





 







