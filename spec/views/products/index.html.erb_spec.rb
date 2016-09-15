require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :id => "",
        :name => "Name",
        :harga => "",
        :keterangan => "MyText",
        :is_active => false,
        :views => "",
        :user_id => "",
        :picture_id => "",
        :slug => "Slug"
      ),
      Product.create!(
        :id => "",
        :name => "Name",
        :harga => "",
        :keterangan => "MyText",
        :is_active => false,
        :views => "",
        :user_id => "",
        :picture_id => "",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
