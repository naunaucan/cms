require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :id => "",
      :name => "MyString",
      :is_active => false,
      :slug => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_id[name=?]", "category[id]"

      assert_select "input#category_name[name=?]", "category[name]"

      assert_select "input#category_is_active[name=?]", "category[is_active]"

      assert_select "input#category_slug[name=?]", "category[slug]"
    end
  end
end
