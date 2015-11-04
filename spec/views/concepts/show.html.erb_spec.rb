require 'rails_helper'

RSpec.describe "concepts/show", type: :view do
  before(:each) do
    @concept = assign(:concept, Concept.create!(
      :name => "Name",
      :user => nil,
      :course => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end