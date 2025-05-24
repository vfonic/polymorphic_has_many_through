class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :professional, polymorphic: true, null: false
      t.datetime :appointment_time
      t.integer :duration
      t.text :notes

      t.timestamps
    end
  end
end
