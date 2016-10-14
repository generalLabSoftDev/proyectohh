class Charge < ApplicationRecord
	  has_many :competencies, dependent: :destroy
	  validates :nombre, presence: true
      validates :cliente, presence: true



end
