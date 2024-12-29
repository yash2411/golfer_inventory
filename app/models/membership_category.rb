class MembershipCategory < ApplicationRecord
    has_many :golfers
  
    validates :name, :duration, :entry_fee, presence: true
  end
  