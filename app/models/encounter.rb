class Encounter < ApplicationRecord

  belongs_to :patient
  has_many :encounter_charges

  accepts_nested_attributes_for :patient, :encounter_charges

end
