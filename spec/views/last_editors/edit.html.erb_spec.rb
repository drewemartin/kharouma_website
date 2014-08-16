require 'rails_helper'

RSpec.describe "last_editors/edit", :type => :view do
  before(:each) do
    @last_editor = assign(:last_editor, LastEditor.create!(
      :user_id => 1,
      :article_id => 1
    ))
  end

  it "renders the edit last_editor form" do
    render

    assert_select "form[action=?][method=?]", last_editor_path(@last_editor), "post" do

      assert_select "input#last_editor_user_id[name=?]", "last_editor[user_id]"

      assert_select "input#last_editor_article_id[name=?]", "last_editor[article_id]"
    end
  end
end
