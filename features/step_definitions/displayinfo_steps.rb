Given(/^I'm on the artist details page$/) do
  page.driver.post('/search/details', { :search => { :name => "Linkin Park" } } ) 
end

When(/^I click on View Biography$/) do
  click_button 'View Biography'
end

Then(/^I should be able to see the artist biography$/) do
  assert page.has_content?("Biography")
end





 







