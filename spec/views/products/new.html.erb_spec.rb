require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :id => "",
      :name => "MyString",
      :harga => "",
      :keterangan => "MyText",
      :is_active => false,
      :views => "",
      :user_id => "",
      :picture_id => "",
      :slug => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_id[name=?]", "product[id]"

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_harga[name=?]", "product[harga]"

      assert_select "textarea#product_keterangan[name=?]", "product[keterangan]"

      assert_select "input#product_is_active[name=?]", "product[is_active]"

      assert_select "input#product_views[name=?]", "product[views]"

      assert_select "input#product_user_id[name=?]", "product[user_id]"

      assert_select "input#product_picture_id[name=?]", "product[picture_id]"

      assert_select "input#product_slug[name=?]", "product[slug]"
    end
  end
end
