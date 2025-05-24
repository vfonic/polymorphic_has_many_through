class CreatePhysicians < ActiveRecord::Migration[8.0]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :specialty
      t.string :phone_number

      t.timestamps
    end
  end
end
