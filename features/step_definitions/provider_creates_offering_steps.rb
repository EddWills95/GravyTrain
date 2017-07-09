Given(/^a provider is already registered$/) do
  @email = Faker::Internet.email
  @password = 'password123'
  @provider = Provider.new(email: @email, password: @password, password_confirmation: @password, organisation_name: Faker::Company.name)

end

Given(/^is already logged in$/) do
  @provider.skip_confirmation!
  @provider.save

  page.set_rack_session('warden.user.provider.key' => Provider.serialize_into_session(@provider))
end

Given(/^they are on the new offerings form$/) do
  visit new_provider_offering_path(@provider)
end

When(/^they fill in the form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^they click on create new offering$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^a new offerings exists$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^they are on the new offering page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
