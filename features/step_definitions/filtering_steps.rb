Given(/^there are some offerings in the food category$/) do
  @food = Category.create!(name: "food")
  @food.offerings << @sushi
end

Given(/^there are some offerings in the sports category$/) do
  @category = Category.create!(name: "sports")
  @category.offerings << @karate
end

Given(/^they are on the offerings listings page$/) do
  visit offerings_path
end

Then(/^they see all of the offerings$/) do
  assert(page.has_content?(@sushi.name))
  assert(page.has_content?(@karate.name))
end

When(/^they filter by the food category$/) do
  select @food.name, from: "category_id"
  click_on "Filter"
end

Then(/^they see the food offerings$/) do
  assert(page.has_content?(@sushi.name))
end

Then(/^they don't see the sports offerings$/) do
  refute(page.has_content?(@karate.name))
end