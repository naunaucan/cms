require 'rails_helper'

RSpec.describe "kota/index", type: :view do
  before(:each) do
    assign(:kota, [
      Kotum.create!(
        :id => "",
        :name => "Name",
        :provinsi_id => "",
        :is_active => false
      ),
      Kotum.create!(
        :id => "",
        :name => "Name",
        :provinsi_id => "",
        :is_active => false
      )
    ])
  end

  it "renders a list of kota" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
