require 'rails_helper'

RSpec.describe "provinsis/edit", type: :view do
  before(:each) do
    @provinsi = assign(:provinsi, Provinsi.create!(
      :id => "",
      :name => "MyString",
      :is_active => false
    ))
  end

  it "renders the edit provinsi form" do
    render

    assert_select "form[action=?][method=?]", provinsi_path(@provinsi), "post" do

      assert_select "input#provinsi_id[name=?]", "provinsi[id]"

      assert_select "input#provinsi_name[name=?]", "provinsi[name]"

      assert_select "input#provinsi_is_active[name=?]", "provinsi[is_active]"
    end
  end
end
