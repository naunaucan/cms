require 'rails_helper'

RSpec.describe "kota/edit", type: :view do
  before(:each) do
    @kotum = assign(:kotum, Kotum.create!(
      :id => "",
      :name => "MyString",
      :provinsi_id => "",
      :is_active => false
    ))
  end

  it "renders the edit kotum form" do
    render

    assert_select "form[action=?][method=?]", kotum_path(@kotum), "post" do

      assert_select "input#kotum_id[name=?]", "kotum[id]"

      assert_select "input#kotum_name[name=?]", "kotum[name]"

      assert_select "input#kotum_provinsi_id[name=?]", "kotum[provinsi_id]"

      assert_select "input#kotum_is_active[name=?]", "kotum[is_active]"
    end
  end
end
