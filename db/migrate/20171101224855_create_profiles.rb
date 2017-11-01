class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :suburb
      t.string :postcode

      t.timestamps
    end
  end
end
