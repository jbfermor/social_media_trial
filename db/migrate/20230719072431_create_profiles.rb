class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :surname1
      t.string :surname2
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.string :phone
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
