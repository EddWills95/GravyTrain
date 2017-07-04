When(/^they click on the how site works link$/) do
  click_on('How it works')
end

Then(/^they see the how site works page$/) do
  assert(page.has_content?('How it works'))
end