require 'rails_helper'

RSpec.describe "last_editors/index", :type => :view do
  before(:each) do
    assign(:last_editors, [
      LastEditor.create!(
        :user_id => 1,
        :article_id => 2
      ),
      LastEditor.create!(
        :user_id => 1,
        :article_id => 2
      )
    ])
  end

  it "renders a list of last_editors" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
