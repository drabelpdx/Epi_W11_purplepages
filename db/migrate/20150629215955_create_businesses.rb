class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :address, :string
      t.column :phone, :string
      t.column :type_id, :integer

      t.timestamps
    end
  end
end
