require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before do
     2.times {FactoryGirl.create(:course)}
  end

  it "renders a list of courses" do
    @courses = Course.all.take(2)
    render
    assert_select "tr>td", :count => 2
  end
end
