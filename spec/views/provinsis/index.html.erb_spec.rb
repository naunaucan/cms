require 'rails_helper'

RSpec.describe "provinsis/index", type: :view do
  before(:each) do
    assign(:provinsis, [
      Provinsi.create!(
        :id => "",
        :name => "Name",
        :is_active => false
      ),
      Provinsi.create!(
        :id => "",
        :name => "Name",
        :is_active => false
      )
    ])
  end

  it "renders a list of provinsis" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
