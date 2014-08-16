class CreateLastEditors < ActiveRecord::Migration
  def change
    create_table :last_editors do |t|
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
  end
end
