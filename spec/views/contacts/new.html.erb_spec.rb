require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :id => "",
      :user_id => "",
      :from_name => "MyString",
      :from_email => "MyString",
      :subject => "MyString",
      :message => "MyText",
      :is_active => false,
      :ip => "MyString",
      :user_id_from => ""
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_id[name=?]", "contact[id]"

      assert_select "input#contact_user_id[name=?]", "contact[user_id]"

      assert_select "input#contact_from_name[name=?]", "contact[from_name]"

      assert_select "input#contact_from_email[name=?]", "contact[from_email]"

      assert_select "input#contact_subject[name=?]", "contact[subject]"

      assert_select "textarea#contact_message[name=?]", "contact[message]"

      assert_select "input#contact_is_active[name=?]", "contact[is_active]"

      assert_select "input#contact_ip[name=?]", "contact[ip]"

      assert_select "input#contact_user_id_from[name=?]", "contact[user_id_from]"
    end
  end
end
