class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :avatar_data
      t.string :firstname
      t.string :lastname
      t.text :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
