class RemovePublishNowFromArticle < ActiveRecord::Migration
  def change
    remove_column :articles, :publish_now, :boolean
  end
end
