require 'rails_helper'

RSpec.describe "doers/new", :type => :view do
  before(:each) do
    assign(:doer, Doer.new(
      :name => "MyString",
      :email => "MyString",
      :password_digest => "MyString"
    ))
  end

  it "renders new doer form" do
    render

    assert_select "form[action=?][method=?]", doers_path, "post" do

      assert_select "input#doer_name[name=?]", "doer[name]"

      assert_select "input#doer_email[name=?]", "doer[email]"

      assert_select "input#doer_password_digest[name=?]", "doer[password_digest]"
    end
  end
end
