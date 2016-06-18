# Middleman configuration

activate :livereload

activate :blog do |blog|
  blog.prefix = "blog"
  blog.permalink = "{year}/{month}/{day}/{title}.html"
  blog.taglink = "categories/:tag.html"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
  blog.paginate = true
end

helpers do
  def uncapitalize string
    string[0, 1].downcase + string[1..-1]
  end
end

Time.zone = "Helsinki"

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

page "/", layout: :layout # Homepage doesn't need navigation bar
page "/blog/*-*-*-*", layout: :article_layout
page "/blog/feed.xml", :layout => false
page "/*", layout: :standard_layout

activate :directory_indexes

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
end
