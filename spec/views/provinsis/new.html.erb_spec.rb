require 'rails_helper'

RSpec.describe "provinsis/new", type: :view do
  before(:each) do
    assign(:provinsi, Provinsi.new(
      :id => "",
      :name => "MyString",
      :is_active => false
    ))
  end

  it "renders new provinsi form" do
    render

    assert_select "form[action=?][method=?]", provinsis_path, "post" do

      assert_select "input#provinsi_id[name=?]", "provinsi[id]"

      assert_select "input#provinsi_name[name=?]", "provinsi[name]"

      assert_select "input#provinsi_is_active[name=?]", "provinsi[is_active]"
    end
  end
end
