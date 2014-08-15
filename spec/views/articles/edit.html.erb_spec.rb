require 'rails_helper'

RSpec.describe "articles/edit", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :body => "MyText",
      :title => "MyString",
      :last_editor => "MyString",
      :publish_location => "MyString",
      :publish_now => false,
      :user_id => 1
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "input#article_last_editor[name=?]", "article[last_editor]"

      assert_select "input#article_publish_location[name=?]", "article[publish_location]"

      assert_select "input#article_publish_now[name=?]", "article[publish_now]"

      assert_select "input#article_user_id[name=?]", "article[user_id]"
    end
  end
end
