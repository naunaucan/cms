require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      :id => "",
      :name => "MyString",
      :is_active => false,
      :slug => "MyString"
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_id[name=?]", "category[id]"

      assert_select "input#category_name[name=?]", "category[name]"

      assert_select "input#category_is_active[name=?]", "category[is_active]"

      assert_select "input#category_slug[name=?]", "category[slug]"
    end
  end
end
