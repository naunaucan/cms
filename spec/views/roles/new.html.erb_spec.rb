require 'rails_helper'

RSpec.describe "roles/new", type: :view do
  before(:each) do
    assign(:role, Role.new(
      :id => "",
      :name => "MyString",
      :is_active => false,
      :set_default => false
    ))
  end

  it "renders new role form" do
    render

    assert_select "form[action=?][method=?]", roles_path, "post" do

      assert_select "input#role_id[name=?]", "role[id]"

      assert_select "input#role_name[name=?]", "role[name]"

      assert_select "input#role_is_active[name=?]", "role[is_active]"

      assert_select "input#role_set_default[name=?]", "role[set_default]"
    end
  end
end
