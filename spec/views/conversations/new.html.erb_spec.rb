require 'rails_helper'

RSpec.describe "conversations/new", type: :view do
  before(:each) do
    assign(:conversation, Conversation.new(
      :id => "",
      :ticket_id => "",
      :avatar => "MyString",
      :numbering => "",
      :user_id => "",
      :message => "MyText",
      :is_read => false
    ))
  end

  it "renders new conversation form" do
    render

    assert_select "form[action=?][method=?]", conversations_path, "post" do

      assert_select "input#conversation_id[name=?]", "conversation[id]"

      assert_select "input#conversation_ticket_id[name=?]", "conversation[ticket_id]"

      assert_select "input#conversation_avatar[name=?]", "conversation[avatar]"

      assert_select "input#conversation_numbering[name=?]", "conversation[numbering]"

      assert_select "input#conversation_user_id[name=?]", "conversation[user_id]"

      assert_select "textarea#conversation_message[name=?]", "conversation[message]"

      assert_select "input#conversation_is_read[name=?]", "conversation[is_read]"
    end
  end
end
