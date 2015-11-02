require 'rails_helper'

RSpec.describe "contents/edit", type: :view do
  before(:each) do
    @content = assign(:content, Content.create!(
      :title => "MyString",
      :content => "MyText",
      :youtube_url => "MyString",
      :fiat => 1,
      :user => nil,
      :concept => nil
    ))
  end

  it "renders the edit content form" do
    render

    assert_select "form[action=?][method=?]", content_path(@content), "post" do

      assert_select "input#content_title[name=?]", "content[title]"

      assert_select "textarea#content_content[name=?]", "content[content]"

      assert_select "input#content_youtube_url[name=?]", "content[youtube_url]"

      assert_select "input#content_fiat[name=?]", "content[fiat]"

      assert_select "input#content_user_id[name=?]", "content[user_id]"

      assert_select "input#content_concept_id[name=?]", "content[concept_id]"
    end
  end
end
