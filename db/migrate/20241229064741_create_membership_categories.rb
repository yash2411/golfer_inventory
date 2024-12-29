class CreateMembershipCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :membership_categories do |t|
      t.string :name
      t.integer :duration
      t.decimal :entry_fee

      t.timestamps
    end
  end
end
