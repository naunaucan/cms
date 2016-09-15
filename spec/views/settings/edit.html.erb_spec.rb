require 'rails_helper'

RSpec.describe "settings/edit", type: :view do
  before(:each) do
    @setting = assign(:setting, Setting.create!(
      :id => "",
      :nama_aplikasi => "MyString",
      :email_default => "MyString",
      :alamat => "MyText",
      :default_password => "MyString",
      :zopim => false,
      :site_status => false
    ))
  end

  it "renders the edit setting form" do
    render

    assert_select "form[action=?][method=?]", setting_path(@setting), "post" do

      assert_select "input#setting_id[name=?]", "setting[id]"

      assert_select "input#setting_nama_aplikasi[name=?]", "setting[nama_aplikasi]"

      assert_select "input#setting_email_default[name=?]", "setting[email_default]"

      assert_select "textarea#setting_alamat[name=?]", "setting[alamat]"

      assert_select "input#setting_default_password[name=?]", "setting[default_password]"

      assert_select "input#setting_zopim[name=?]", "setting[zopim]"

      assert_select "input#setting_site_status[name=?]", "setting[site_status]"
    end
  end
end
