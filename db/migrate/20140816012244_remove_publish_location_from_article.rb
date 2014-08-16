class RemovePublishLocationFromArticle < ActiveRecord::Migration
  def change
    remove_column :articles, :publish_location, :string
  end
end
