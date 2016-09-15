require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :id => "",
        :company_name => "Company Name",
        :country => "Country",
        :address => "MyText",
        :description => "MyText",
        :category_id => "",
        :profile_img => "Profile Img",
        :is_active => false,
        :user_id => "",
        :provinsi_id => "",
        :kota_id => "",
        :owner => "Owner",
        :slug => "Slug",
        :telp => "Telp",
        :views => ""
      ),
      Profile.create!(
        :id => "",
        :company_name => "Company Name",
        :country => "Country",
        :address => "MyText",
        :description => "MyText",
        :category_id => "",
        :profile_img => "Profile Img",
        :is_active => false,
        :user_id => "",
        :provinsi_id => "",
        :kota_id => "",
        :owner => "Owner",
        :slug => "Slug",
        :telp => "Telp",
        :views => ""
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Img".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Telp".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
