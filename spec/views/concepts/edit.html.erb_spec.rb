require 'rails_helper'

RSpec.describe "concepts/edit", type: :view do
  before(:each) do
    @concept = assign(:concept, Concept.create!(
      :name => "MyString",
      :user => nil,
      :course => nil
    ))
  end

  it "renders the edit concept form" do
    render

    assert_select "form[action=?][method=?]", concept_path(@concept), "post" do

      assert_select "input#concept_name[name=?]", "concept[name]"

      assert_select "input#concept_user_id[name=?]", "concept[user_id]"

      assert_select "input#concept_course_id[name=?]", "concept[course_id]"
    end
  end
end
