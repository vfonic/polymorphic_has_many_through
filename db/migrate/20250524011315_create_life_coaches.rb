class CreateLifeCoaches < ActiveRecord::Migration[8.0]
  def change
    create_table :life_coaches do |t|
      t.string :name
      t.string :expertise
      t.string :email

      t.timestamps
    end
  end
end
