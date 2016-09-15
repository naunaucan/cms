require 'rails_helper'

RSpec.describe "pages/new", type: :view do
  before(:each) do
    assign(:page, Page.new(
      :id => "",
      :title => "MyString",
      :content => "MyText",
      :user_id => "",
      :views => "",
      :is_active => false
    ))
  end

  it "renders new page form" do
    render

    assert_select "form[action=?][method=?]", pages_path, "post" do

      assert_select "input#page_id[name=?]", "page[id]"

      assert_select "input#page_title[name=?]", "page[title]"

      assert_select "textarea#page_content[name=?]", "page[content]"

      assert_select "input#page_user_id[name=?]", "page[user_id]"

      assert_select "input#page_views[name=?]", "page[views]"

      assert_select "input#page_is_active[name=?]", "page[is_active]"
    end
  end
end
