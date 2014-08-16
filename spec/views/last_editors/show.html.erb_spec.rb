require 'rails_helper'

RSpec.describe "last_editors/show", :type => :view do
  before(:each) do
    @last_editor = assign(:last_editor, LastEditor.create!(
      :user_id => 1,
      :article_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
