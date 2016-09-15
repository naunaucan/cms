require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Profile Img/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Telp/)
    expect(rendered).to match(//)
  end
end
