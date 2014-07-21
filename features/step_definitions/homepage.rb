Given(/^I am on the homepage$/) do
	visit '/'
end

When(/^I follow "(.*?)"$/) do |link_name|
  click_link(link_name)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end


# When(/^I fill "(.*?)"$/) do |text|
# 	expect(page).to have_selector '#' << text
# 	fill_in text, :with => 'Jeremy'
# end

When (/^I fill "(.*?)" with "(.*?)"$/)  do |field, value|
    fill_in(field, :with => value)
end

