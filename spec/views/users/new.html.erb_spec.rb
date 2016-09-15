require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :id => "",
      :username => "MyString",
      :email => "MyString",
      :encrypt_password => "MyString",
      :salt => "MyString",
      :role_id => "",
      :is_active => false,
      :token => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_id[name=?]", "user[id]"

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_encrypt_password[name=?]", "user[encrypt_password]"

      assert_select "input#user_salt[name=?]", "user[salt]"

      assert_select "input#user_role_id[name=?]", "user[role_id]"

      assert_select "input#user_is_active[name=?]", "user[is_active]"

      assert_select "input#user_token[name=?]", "user[token]"
    end
  end
end
