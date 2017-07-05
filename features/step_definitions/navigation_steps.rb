Given(/^there are blog posts$/) do
  @title = "Test Post"
  @blog_img = "test_blog_image.jpg"
  @content = "Some blog content here..."
  Post.create!(title: @title, img_url: @blog_img, content: @content)
end

When(/^they click on the blog button$/) do
  click_on 'Blog'
end

Then(/^they will be sent to the blog page$/) do
  visit(posts_path)
end

Then(/^they see blog posts$/) do
  assert page.has_content?(@content)
end