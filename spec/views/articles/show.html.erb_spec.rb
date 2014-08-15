require 'rails_helper'

RSpec.describe "articles/show", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :body => "MyText",
      :title => "Title",
      :last_editor => "Last Editor",
      :publish_location => "Publish Location",
      :publish_now => false,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Last Editor/)
    expect(rendered).to match(/Publish Location/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
