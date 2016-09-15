require 'rails_helper'

RSpec.describe "roles/index", type: :view do
  before(:each) do
    assign(:roles, [
      Role.create!(
        :id => "",
        :name => "Name",
        :is_active => false,
        :set_default => false
      ),
      Role.create!(
        :id => "",
        :name => "Name",
        :is_active => false,
        :set_default => false
      )
    ])
  end

  it "renders a list of roles" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
