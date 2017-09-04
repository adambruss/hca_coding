class CreateEncounterCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :encounter_charges do |t|
      t.references :encounter, index: true
      t.references :charge_code, index: true
      t.integer :quantity
    end
  end
end
