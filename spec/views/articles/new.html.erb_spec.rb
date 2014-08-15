require 'rails_helper'

RSpec.describe "articles/new", :type => :view do
  before(:each) do
    assign(:article, Article.new(
      :body => "MyText",
      :title => "MyString",
      :last_editor => "MyString",
      :publish_location => "MyString",
      :publish_now => false,
      :user_id => 1
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "input#article_last_editor[name=?]", "article[last_editor]"

      assert_select "input#article_publish_location[name=?]", "article[publish_location]"

      assert_select "input#article_publish_now[name=?]", "article[publish_now]"

      assert_select "input#article_user_id[name=?]", "article[user_id]"
    end
  end
end
