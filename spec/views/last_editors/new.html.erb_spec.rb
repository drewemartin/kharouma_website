require 'rails_helper'

RSpec.describe "last_editors/new", :type => :view do
  before(:each) do
    assign(:last_editor, LastEditor.new(
      :user_id => 1,
      :article_id => 1
    ))
  end

  it "renders new last_editor form" do
    render

    assert_select "form[action=?][method=?]", last_editors_path, "post" do

      assert_select "input#last_editor_user_id[name=?]", "last_editor[user_id]"

      assert_select "input#last_editor_article_id[name=?]", "last_editor[article_id]"
    end
  end
end
