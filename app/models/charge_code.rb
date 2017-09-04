class ChargeCode < ApplicationRecord

  has_many :charge_code_prices
  scope :for_year, ->(year) { where(year: year).first }

end
