class Feedbacks < ActiveRecord::Migration[7.1]
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
