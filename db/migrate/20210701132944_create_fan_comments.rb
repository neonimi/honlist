class CreateFanComments < ActiveRecord::Migration[6.1]
  def change
    create_table :fan_comments do |t|
      t.integer :auther_no
      t.string :name
      t.text :body
      t.boolean :deleted

      t.timestamps
    end
  end
end
