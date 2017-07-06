Given(/^a provider is logged in$/) do
  @email = Faker::Internet.email
  @password = 'password123'
  @provider = Provider.new(email: @email, password: @password, password_confirmation: @password, organisation_name: Faker::Company.name)
  @provider.skip_confirmation!
  @provider.save

  visit new_buyer_session_path
  fill_in 'Email', :with => @email
  fill_in 'Password', :with => @password
  click_on 'Log in'
  visit(root_path)
  save_and_open_page
end

Given(/^is on their account page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^they click on offerings$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^they see their own offerings$/) do
  pending # Write code here that turns the phrase above into concrete actions
end