
Given(/^there are some offerings in the food category$/) do
  @category = Category.create!(name: "food")
  @category.offerings << @sushi
end

Given(/^there are some offerings in the sports category$/) do
  @category = Category.create!(name: "sports")
  @category.offerings << @karate
end

Given(/^they are on the offerings listings page$/) do
  visit offerings_path
end

Then(/^they see all of the offerings$/) do
  assert(page.has_content?(@sushi.title))
  assert(page.has_content?(@karate.title))
end

When(/^they filter by the food category$/) do
  select "food", :from => "category[category_id]"
  click_on "Filter"
end

Then(/^they see only the food offerings$/) do
  refute(page.has_content?(@karate.title))
end