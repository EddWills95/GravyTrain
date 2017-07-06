Given(/^there are blog posts$/) do
  @title = "Test Post"
  @blog_img = "test_blog_image.jpg"
  @content = "Some blog content here..."
  @title2 = "Test Post"
  @blog_img2 = "test_blog_image.jpg"
  @content2 = "Some blog content here..."
  Post.create!(title: @title, img_url: @blog_img, content: @content)
  Post.create!(title: @title2, img_url: @blog_img2, content: @content2)
end

When(/^they click on the blog button$/) do
  click_on 'Blog'
end

Then(/^they will be sent to the blog page$/) do
  visit(posts_path)
end

Then(/^they see a list of blog posts$/) do
  assert page.has_content?(@content)
  assert page.has_content?(@content2)
end