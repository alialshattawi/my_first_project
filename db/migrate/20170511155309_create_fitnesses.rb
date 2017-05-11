class CreateFitnesses < ActiveRecord::Migration
  def change
    create_table :fitnesses do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
