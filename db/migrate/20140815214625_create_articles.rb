class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :body
      t.string :title
      t.string :last_editor
      t.string :publish_location
      t.boolean :publish_now
      t.integer :user_id

      t.timestamps
    end
  end
end
