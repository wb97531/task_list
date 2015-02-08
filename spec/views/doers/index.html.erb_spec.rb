require 'rails_helper'

RSpec.describe "doers/index", type: :view do
  before(:each) do
    assign(:doers, [
      Doer.create!(
        name: "Name",
        email: "Email",
        password: "Password",
        password_confirmation: "Password",
    ),
      Doer.create!(
        name: "Name",
        email: "Email",
        password: "Password",
        password_confirmation: "Password"
    )
    ])
  end

  it "renders a list of doers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
  end
end
