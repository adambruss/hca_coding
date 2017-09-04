class Encounter < ApplicationRecord

  belongs_to :patient
  has_many :encounter_charges

  scope :billed, -> { where(billed: true) }
  scope :unbilled, -> { where(billed: false) }

  accepts_nested_attributes_for :patient, :encounter_charges

end
