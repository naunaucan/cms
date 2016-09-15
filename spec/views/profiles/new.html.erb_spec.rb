require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :id => "",
      :company_name => "MyString",
      :country => "MyString",
      :address => "MyText",
      :description => "MyText",
      :category_id => "",
      :profile_img => "MyString",
      :is_active => false,
      :user_id => "",
      :provinsi_id => "",
      :kota_id => "",
      :owner => "MyString",
      :slug => "MyString",
      :telp => "MyString",
      :views => ""
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_id[name=?]", "profile[id]"

      assert_select "input#profile_company_name[name=?]", "profile[company_name]"

      assert_select "input#profile_country[name=?]", "profile[country]"

      assert_select "textarea#profile_address[name=?]", "profile[address]"

      assert_select "textarea#profile_description[name=?]", "profile[description]"

      assert_select "input#profile_category_id[name=?]", "profile[category_id]"

      assert_select "input#profile_profile_img[name=?]", "profile[profile_img]"

      assert_select "input#profile_is_active[name=?]", "profile[is_active]"

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_provinsi_id[name=?]", "profile[provinsi_id]"

      assert_select "input#profile_kota_id[name=?]", "profile[kota_id]"

      assert_select "input#profile_owner[name=?]", "profile[owner]"

      assert_select "input#profile_slug[name=?]", "profile[slug]"

      assert_select "input#profile_telp[name=?]", "profile[telp]"

      assert_select "input#profile_views[name=?]", "profile[views]"
    end
  end
end
