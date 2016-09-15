require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :id => "",
      :username => "Username",
      :email => "Email",
      :encrypt_password => "Encrypt Password",
      :salt => "Salt",
      :role_id => "",
      :is_active => false,
      :token => "Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Encrypt Password/)
    expect(rendered).to match(/Salt/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Token/)
  end
end
