class CreateChargeCodePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :charge_code_prices do |t|
      t.references :charge_code, index: true
      t.integer :year
      t.float :amount
    end
  end
end
