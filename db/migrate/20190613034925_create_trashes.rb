class CreateTrashes < ActiveRecord::Migration[5.2]
  def change
    create_table :trashes do |t|
      t.string :name
      t.string :accepted
      t.string :alternative
      t.string :mail
      t.string :address
      t.string :phone
      t.string :website
      t.string :details

      t.timestamps
    end
  end
end
