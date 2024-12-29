class CreateGolfers < ActiveRecord::Migration[7.1]
  def change
    create_table :golfers do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.decimal :entry_fee
      t.string :membership_code
      t.date :membership_date
      t.date :expiry_date
      t.boolean :is_dependent
      t.string :dependent_of

      t.timestamps
    end
  end
end
