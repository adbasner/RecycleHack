class CreateTrashes < ActiveRecord::Migration[5.2]
  def change
    create_table :trashes do |t|
      t.timestamps
    end
  end
end
