class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :document
      t.date :birthdate

      t.timestamps
    end
  end
end
