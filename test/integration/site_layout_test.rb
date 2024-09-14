require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "signup path layout links" do
    get signup_path                                 #サインアップへアクセス。
    assert_template 'users/new'                     #指定のレイアウトが表示されるか
    assert_select "a[href=?]", root_path, count: 2  #各種リンクが表示されるか
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "title", full_title("Sign up")    #タイトルが正しいか
  end
end

