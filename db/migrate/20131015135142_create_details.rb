class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|

      t.text :firstName
      t.text :lastName
      t.text :gender
      t.text :address
      t.text :cell
      t.text :country

      t.timestamps
    end
  end
end
