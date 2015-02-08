require 'rails_helper'

RSpec.describe "doers/show", type: :view do
  before(:each) do
    @doer = assign(:doer, Doer.create!(
      name: "Name",
      email: "Email",
      password: "MyPassword",
      password_confirmation: "MyPassword",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
