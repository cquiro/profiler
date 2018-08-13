class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.string :twitter_account
      t.text :image

      t.timestamps
    end
  end
end
