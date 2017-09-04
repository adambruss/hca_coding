class CreateEncounters < ActiveRecord::Migration[5.1]
  def change
    create_table :encounters do |t|
      t.references :patient, index: true
      t.datetime :date_of_service
      t.string :reason_for_visit
      t.boolean :billed, default: false

      t.timestamps
    end
  end
end
