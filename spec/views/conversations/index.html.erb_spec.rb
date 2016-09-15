require 'rails_helper'

RSpec.describe "conversations/index", type: :view do
  before(:each) do
    assign(:conversations, [
      Conversation.create!(
        :id => "",
        :ticket_id => "",
        :avatar => "Avatar",
        :numbering => "",
        :user_id => "",
        :message => "MyText",
        :is_read => false
      ),
      Conversation.create!(
        :id => "",
        :ticket_id => "",
        :avatar => "Avatar",
        :numbering => "",
        :user_id => "",
        :message => "MyText",
        :is_read => false
      )
    ])
  end

  it "renders a list of conversations" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
