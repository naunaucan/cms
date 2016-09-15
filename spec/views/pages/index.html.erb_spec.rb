require 'rails_helper'

RSpec.describe "pages/index", type: :view do
  before(:each) do
    assign(:pages, [
      Page.create!(
        :id => "",
        :title => "Title",
        :content => "MyText",
        :user_id => "",
        :views => "",
        :is_active => false
      ),
      Page.create!(
        :id => "",
        :title => "Title",
        :content => "MyText",
        :user_id => "",
        :views => "",
        :is_active => false
      )
    ])
  end

  it "renders a list of pages" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
