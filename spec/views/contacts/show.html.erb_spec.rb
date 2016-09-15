require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :id => "",
      :user_id => "",
      :from_name => "From Name",
      :from_email => "From Email",
      :subject => "Subject",
      :message => "MyText",
      :is_active => false,
      :ip => "Ip",
      :user_id_from => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/From Name/)
    expect(rendered).to match(/From Email/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Ip/)
    expect(rendered).to match(//)
  end
end
