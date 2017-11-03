class AddBioToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :bio, :string
  end
end
