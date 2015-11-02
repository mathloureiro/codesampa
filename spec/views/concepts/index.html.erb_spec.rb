require 'rails_helper'

RSpec.describe "concepts/index", type: :view do
  before(:each) do
    assign(:concepts, [
      Concept.create!(
        :name => "Name",
        :user => nil,
        :course => nil
      ),
      Concept.create!(
        :name => "Name",
        :user => nil,
        :course => nil
      )
    ])
  end

  it "renders a list of concepts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
