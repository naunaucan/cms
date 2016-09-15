require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :id => "",
        :user_id => "",
        :from_name => "From Name",
        :from_email => "From Email",
        :subject => "Subject",
        :message => "MyText",
        :is_active => false,
        :ip => "Ip",
        :user_id_from => ""
      ),
      Contact.create!(
        :id => "",
        :user_id => "",
        :from_name => "From Name",
        :from_email => "From Email",
        :subject => "Subject",
        :message => "MyText",
        :is_active => false,
        :ip => "Ip",
        :user_id_from => ""
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "From Name".to_s, :count => 2
    assert_select "tr>td", :text => "From Email".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
