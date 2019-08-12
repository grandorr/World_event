class Event < ApplicationRecord
  has_many :attendances
  has_many :noob, through: :attendances, class_name: "User"
  belongs_to :administrator, class_name: "User"


  validates :start_date,
        presence: true, inclusion: { in: (Date.today..Date.today+50.years) }



  validates :duration,
  presence: true , numericality: { only_integer: true }, if:  :is_multiple_5?

  def is_multiple_5?
  if self.duration % 5 != 0
    errors.add(:duration, "La durée doit être un multiple de 5")
  end
  end

  validates :title,
  presence: true, length: { minimum: 5, maximum: 140 }

  validates :description,
  presence: true, length: { minimum: 20, maximum: 1000 }

  validates :price,
  presence: true, numericality: { only_integer: true, greater_than: 1, less_than: 1000 }

  validates :location,
  presence: true
end
