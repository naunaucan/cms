require 'rails_helper'

RSpec.describe "settings/show", type: :view do
  before(:each) do
    @setting = assign(:setting, Setting.create!(
      :id => "",
      :nama_aplikasi => "Nama Aplikasi",
      :email_default => "Email Default",
      :alamat => "MyText",
      :default_password => "Default Password",
      :zopim => false,
      :site_status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Nama Aplikasi/)
    expect(rendered).to match(/Email Default/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Default Password/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
