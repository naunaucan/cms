require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :id => "",
      :subject => "MyString",
      :message => "MyText",
      :is_active => false,
      :is_read => false,
      :user_id => "",
      :status => "MyString",
      :numbering => "MyString"
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input#ticket_id[name=?]", "ticket[id]"

      assert_select "input#ticket_subject[name=?]", "ticket[subject]"

      assert_select "textarea#ticket_message[name=?]", "ticket[message]"

      assert_select "input#ticket_is_active[name=?]", "ticket[is_active]"

      assert_select "input#ticket_is_read[name=?]", "ticket[is_read]"

      assert_select "input#ticket_user_id[name=?]", "ticket[user_id]"

      assert_select "input#ticket_status[name=?]", "ticket[status]"

      assert_select "input#ticket_numbering[name=?]", "ticket[numbering]"
    end
  end
end
