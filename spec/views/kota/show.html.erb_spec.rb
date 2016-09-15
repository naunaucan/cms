require 'rails_helper'

RSpec.describe "kota/show", type: :view do
  before(:each) do
    @kotum = assign(:kotum, Kotum.create!(
      :id => "",
      :name => "Name",
      :provinsi_id => "",
      :is_active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
