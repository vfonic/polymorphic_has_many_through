class CreateChefs < ActiveRecord::Migration[8.0]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :cuisine_type
      t.integer :years_of_experience

      t.timestamps
    end
  end
end
