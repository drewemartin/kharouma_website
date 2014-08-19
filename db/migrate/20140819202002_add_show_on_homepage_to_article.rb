class AddShowOnHomepageToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :show_on_homepage, :string
  end
end
