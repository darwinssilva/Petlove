class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.float :monthly_cost
      t.string :animal_type
      t.references :person

      t.timestamps
    end
  end
end
