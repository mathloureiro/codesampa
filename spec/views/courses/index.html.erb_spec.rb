require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before do
     10.times {FactoryGirl.create(:course)}
  end

  it "renders a list of courses" do
    @courses = Course.all.take(10)
    render
    assert_select "tr>td", :count => 10
  end
end
