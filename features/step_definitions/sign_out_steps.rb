Then(/^they are already signed in$/) do
  page.set_rack_session('warden.user.buyer.key' => Buyer.serialize_into_session(@buyer))
end

When(/^they click logout$/) do
  click_on 'Logout'
end

Then(/^they are logged out$/) do
  assert_equal page.get_rack_session.length, 1
end