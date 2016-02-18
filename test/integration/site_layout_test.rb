require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
test 'lay out links' do
  get root_path
  assert_template 'static_page/home'
  assert_select "a[href=?]", root_path,count: 2
  assert_select "a[href=?]", about_path
  assert_select "a[href=?]", contact_path
  assert_select "a[href=?]", help_path
  assert_select "a[href=?]", signup_path
end
end
