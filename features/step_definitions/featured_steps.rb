Given(/^there are some featured offers$/) do
  @sushi = Offering.create!(title: "Sushi Making", price: 15000, duration: 3, img_url: "sushi.jpg", company_name: "Takis Japanses Cooking", location: "Central London", featured: true)
  @karate = Offering.create!(title: "Karate", price: 48000, duration: 2, img_url: "karate.jpg", company_name: "SMK", location: "Birmigham", featured: true)

end

Given(/^there are some unfeatured offers$/) do
  Offering.create!(title: "Karate", price: 48000, duration: 2, img_url: "karate.jpg", company_name: "SMK", location: "Birmigham", featured: false)

end

When(/^they are on the homepage$/) do
  visit('/')
end

Then(/^they see featured offers$/) do
  @offering = Offering.all.first
  assert(page.has_content?(@offering.title))
  assert(page.has_content?(@offering.price))
  assert(page.has_content?(@offering.duration))
  assert(page.has_content?(@offering.img_url))
  assert(page.has_content?(@offering.company_name))
  assert(page.has_content?(@offering.location))
end

Then(/^they don't see unfeatured offers$/) do
  @offering = Offering.find_by(featured: false)
  refute(page.has_content?(@offering.title))
  refute(page.has_content?(@offering.price))
  refute(page.has_content?(@offering.duration))
  refute(page.has_content?(@offering.img_url))
  refute(page.has_content?(@offering.company_name))
  refute(page.has_content?(@offering.location))
end

When(/^they click on the find out more button$/) do
  click_on('Find out more!')
end

Then(/^they see the offer's page$/) do
  assert(page.has_content?('Sushi Making'))
end

