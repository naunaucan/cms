require 'rails_helper'

RSpec.describe "blogs/new", type: :view do
  before(:each) do
    assign(:blog, Blog.new(
      :id => "",
      :title => "MyString",
      :isi => "MyText",
      :is_active => false,
      :views => "",
      :slug => "MyString",
      :user_id => "",
      :tags => "MyString"
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "input#blog_id[name=?]", "blog[id]"

      assert_select "input#blog_title[name=?]", "blog[title]"

      assert_select "textarea#blog_isi[name=?]", "blog[isi]"

      assert_select "input#blog_is_active[name=?]", "blog[is_active]"

      assert_select "input#blog_views[name=?]", "blog[views]"

      assert_select "input#blog_slug[name=?]", "blog[slug]"

      assert_select "input#blog_user_id[name=?]", "blog[user_id]"

      assert_select "input#blog_tags[name=?]", "blog[tags]"
    end
  end
end
