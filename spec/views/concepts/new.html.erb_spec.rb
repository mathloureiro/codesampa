require 'rails_helper'

RSpec.describe "concepts/new", type: :view do
  before(:each) do
    assign(:concept, Concept.new(
      :name => "MyString",
      :user => nil,
      :course => nil
    ))
  end

  it "renders new concept form" do
    render

    assert_select "form[action=?][method=?]", concepts_path, "post" do

      assert_select "input#concept_name[name=?]", "concept[name]"

      assert_select "input#concept_user_id[name=?]", "concept[user_id]"

      assert_select "input#concept_course_id[name=?]", "concept[course_id]"
    end
  end
end
