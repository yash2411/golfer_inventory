class Golfer < ApplicationRecord
    belongs_to :main_member, class_name: 'Golfer', optional: true, foreign_key: 'dependent_of'
    has_many :dependents, class_name: 'Golfer', foreign_key: 'dependent_of'

    belongs_to :membership_category
  
    validates :name, :email, :mobile, :membership_code, presence: true
    validates :email, uniqueness: true
  
    def calculate_quarterly_fee
      1200 * (1 + dependents.count)
    end
  end
  