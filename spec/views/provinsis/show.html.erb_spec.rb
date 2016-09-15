require 'rails_helper'

RSpec.describe "provinsis/show", type: :view do
  before(:each) do
    @provinsi = assign(:provinsi, Provinsi.create!(
      :id => "",
      :name => "Name",
      :is_active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
