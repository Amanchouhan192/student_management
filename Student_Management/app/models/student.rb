class Student < ApplicationRecord
	belongs_to :department
	validates :name, :age, presence: true 
	validates :age, numericality: { message: "%{value} seems wrong must be an positive integer" }
    
    validates_numericality_of :marks, :less_than => 100
    # age custom validation
    validate :age_validation_custom
    def age_validation_custom
      if validates_numericality_of :age, :greater_than_or_equal_to => 15
         validates_numericality_of :age, :less_than => 20
      end
    end
end
