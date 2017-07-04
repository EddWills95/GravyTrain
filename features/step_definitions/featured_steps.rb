Given(/^there are some featured offers$/) do
  Offering.create!(name: "sushi making", price: 15000, duration: 3, img_url: "sushi.jpg", company_name: "Sushi Company", location: "central london", featured: true)
end

Given(/^there are some non\-featured offers$/) do
  Offering.create!(name: "Karate", price: 48000, duration: 2, img_url: "karate.jpg", company_name: "SMK", location: "Birmingham", featured: false)

end

Given(/^there is a discount for that offer$/) do
  Offering.first.discounts.create!(num_people: 2, percentage: 20)
  # binding.pry
end

When(/^they are on the homepage$/) do
  visit('/')
end

Then(/^they see featured offers$/) do
  @offering = Offering.all.first
  assert(page.has_content?(@offering.name))
  assert(page.has_content?(@offering.price))
  assert(page.has_content?(@offering.duration))
  assert(page.has_content?(@offering.img_url))
  assert(page.has_content?(@offering.company_name))
  assert(page.has_content?(@offering.location))
end

Then(/^they don't see non\-featured offers$/) do
  @offering = Offering.find_by(featured: false)
  refute(page.has_content?(@offering.name))
  refute(page.has_content?(@offering.price))
  refute(page.has_content?(@offering.duration))
  refute(page.has_content?(@offering.img_url))
  refute(page.has_content?(@offering.company_name))
  refute(page.has_content?(@offering.location))

end

When(/^they click on an offer$/) do
  click_on('find out more')
end

Then(/^they see more information for that offer$/) do
  @offering = Offering.find_by(featured: true)
  assert(page.has_content?("Information about #{@offering.name}"))
end

Then(/^they see the discount for that offer$/) do
  @offering = Offering.find_by(featured: true)
  assert(page.has_content?("Book #{@offering.discounts.first.num_people} or more and get #{@offering.discounts.first.percentage} off"))

end