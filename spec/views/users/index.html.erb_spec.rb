require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :id => "",
        :username => "Username",
        :email => "Email",
        :encrypt_password => "Encrypt Password",
        :salt => "Salt",
        :role_id => "",
        :is_active => false,
        :token => "Token"
      ),
      User.create!(
        :id => "",
        :username => "Username",
        :email => "Email",
        :encrypt_password => "Encrypt Password",
        :salt => "Salt",
        :role_id => "",
        :is_active => false,
        :token => "Token"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Encrypt Password".to_s, :count => 2
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
  end
end
