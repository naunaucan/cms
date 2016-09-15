require 'rails_helper'

RSpec.describe "settings/index", type: :view do
  before(:each) do
    assign(:settings, [
      Setting.create!(
        :id => "",
        :nama_aplikasi => "Nama Aplikasi",
        :email_default => "Email Default",
        :alamat => "MyText",
        :default_password => "Default Password",
        :zopim => false,
        :site_status => false
      ),
      Setting.create!(
        :id => "",
        :nama_aplikasi => "Nama Aplikasi",
        :email_default => "Email Default",
        :alamat => "MyText",
        :default_password => "Default Password",
        :zopim => false,
        :site_status => false
      )
    ])
  end

  it "renders a list of settings" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Nama Aplikasi".to_s, :count => 2
    assert_select "tr>td", :text => "Email Default".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Default Password".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
