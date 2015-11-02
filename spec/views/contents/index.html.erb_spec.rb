require 'rails_helper'

RSpec.describe "contents/index", type: :view do
  before(:each) do
    assign(:contents, [
      Content.create!(
        :title => "Title",
        :content => "MyText",
        :youtube_url => "Youtube Url",
        :fiat => 1,
        :user => nil,
        :concept => nil
      ),
      Content.create!(
        :title => "Title",
        :content => "MyText",
        :youtube_url => "Youtube Url",
        :fiat => 1,
        :user => nil,
        :concept => nil
      )
    ])
  end

  it "renders a list of contents" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Youtube Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
