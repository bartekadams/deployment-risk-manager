class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :description
      t.boolean :available, null: false, default: false
      t.timestamps
    end
  end
end
