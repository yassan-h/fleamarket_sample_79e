class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.references :user, null: false, foreign_key: true, type: :integer
      t.references :item, null: false, foreign_key: true
    end
  end
end