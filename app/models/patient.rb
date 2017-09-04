class Patient < ApplicationRecord

  has_many :encounters

  def name
    "#{last_name}, #{first_name}"
  end

end
