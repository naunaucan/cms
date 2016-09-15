require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :id => "",
        :name => "Name",
        :is_active => false,
        :slug => "Slug"
      ),
      Category.create!(
        :id => "",
        :name => "Name",
        :is_active => false,
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
