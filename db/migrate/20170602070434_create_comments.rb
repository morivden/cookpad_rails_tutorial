class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :image, foreign_key: true, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
