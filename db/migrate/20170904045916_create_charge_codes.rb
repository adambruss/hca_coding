class CreateChargeCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :charge_codes do |t|
      t.string :cdm_code
      t.string :cpt_code
      t.string :hcspcs_code

      t.timestamps
    end
  end
end
