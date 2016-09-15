require 'rails_helper'

RSpec.describe "pages/edit", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :id => "",
      :title => "MyString",
      :content => "MyText",
      :user_id => "",
      :views => "",
      :is_active => false
    ))
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(@page), "post" do

      assert_select "input#page_id[name=?]", "page[id]"

      assert_select "input#page_title[name=?]", "page[title]"

      assert_select "textarea#page_content[name=?]", "page[content]"

      assert_select "input#page_user_id[name=?]", "page[user_id]"

      assert_select "input#page_views[name=?]", "page[views]"

      assert_select "input#page_is_active[name=?]", "page[is_active]"
    end
  end
end
