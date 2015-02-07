require 'rails_helper'

RSpec.describe "tasks/show", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :title => "Title",
      :description => "Description",
      :notes => "MyText",
      :category => "Category",
      :completed => false,
      :priority => 1,
      :doer_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
