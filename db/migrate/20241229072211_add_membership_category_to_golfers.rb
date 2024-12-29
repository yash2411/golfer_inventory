class AddMembershipCategoryToGolfers < ActiveRecord::Migration[7.1]
  def change
    add_reference :golfers, :membership_category, foreign_key: true
  end
end
