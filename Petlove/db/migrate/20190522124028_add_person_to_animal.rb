class AddPersonToAnimal < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :person_id, :integer
  end
end
