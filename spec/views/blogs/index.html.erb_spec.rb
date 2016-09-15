require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        :id => "",
        :title => "Title",
        :isi => "MyText",
        :is_active => false,
        :views => "",
        :slug => "Slug",
        :user_id => "",
        :tags => "Tags"
      ),
      Blog.create!(
        :id => "",
        :title => "Title",
        :isi => "MyText",
        :is_active => false,
        :views => "",
        :slug => "Slug",
        :user_id => "",
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
