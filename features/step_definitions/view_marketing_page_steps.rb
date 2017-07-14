When(/^I visit the Diehard_Fund home page$/) do
  visit root_path
end

Then(/^I should see the marketing page$/) do
  expect(page).to have_css("body.marketing.index")
end
