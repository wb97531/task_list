require 'rails_helper'

RSpec.describe "tasks/edit", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :title => "MyString",
      :description => "MyString",
      :notes => "MyText",
      :category => "MyString",
      :completed => false,
      :priority => 1,
      :doer_id => 1
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_title[name=?]", "task[title]"

      assert_select "input#task_description[name=?]", "task[description]"

      assert_select "textarea#task_notes[name=?]", "task[notes]"

      assert_select "input#task_category[name=?]", "task[category]"

      assert_select "input#task_completed[name=?]", "task[completed]"

      assert_select "input#task_priority[name=?]", "task[priority]"

      assert_select "input#task_doer_id[name=?]", "task[doer_id]"
    end
  end
end
