Given(/^I am on the Homepage$/) do
    @current_page = page(HomePage)
end

Then(/^I should see all the information/) do
   @current_page.trait
end