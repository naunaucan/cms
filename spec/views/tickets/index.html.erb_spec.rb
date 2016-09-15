require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :id => "",
        :subject => "Subject",
        :message => "MyText",
        :is_active => false,
        :is_read => false,
        :user_id => "",
        :status => "Status",
        :numbering => "Numbering"
      ),
      Ticket.create!(
        :id => "",
        :subject => "Subject",
        :message => "MyText",
        :is_active => false,
        :is_read => false,
        :user_id => "",
        :status => "Status",
        :numbering => "Numbering"
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Numbering".to_s, :count => 2
  end
end
