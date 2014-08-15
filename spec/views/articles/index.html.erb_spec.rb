require 'rails_helper'

RSpec.describe "articles/index", :type => :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :body => "MyText",
        :title => "Title",
        :last_editor => "Last Editor",
        :publish_location => "Publish Location",
        :publish_now => false,
        :user_id => 1
      ),
      Article.create!(
        :body => "MyText",
        :title => "Title",
        :last_editor => "Last Editor",
        :publish_location => "Publish Location",
        :publish_now => false,
        :user_id => 1
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Last Editor".to_s, :count => 2
    assert_select "tr>td", :text => "Publish Location".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
