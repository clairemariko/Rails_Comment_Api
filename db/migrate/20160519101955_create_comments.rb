class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :author
      t.text :text

      t.timestamps null: false
    end
  end
end
