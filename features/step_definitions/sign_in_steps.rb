Given(/^they are registered$/) do
  @email = 'someone@somewhere.org'
  @password = 'password123'
  @buyer = Buyer.new(email: @email, password: @password, password_confirmation: @password)
  @buyer.skip_confirmation!
  @buyer.save!
end

Given(/^they are on the sign in page$/) do
   visit new_buyer_session_path
end

When(/^they enter their email address$/) do
  fill_in 'Email', :with => @email
end

When(/^they fill in their password$/) do
  fill_in 'Password', :with => @password
end

When(/^they click the sign in button$/) do
  click_on 'Log in'
end

Then(/^they are signed in$/) do
  assert page.has_content?("Signed in successfully")
end