class RemoveLastEditorFromArticle < ActiveRecord::Migration
  def change
    remove_column :articles, :last_editor, :string
  end
end
