class CreateContactAssociations < ActiveRecord::Migration
  def change
    create_table :contact_associations do |t|
      t.integer :contact_id
      t.integer :resource_id
      t.string :resource_type

      t.timestamps
    end
  end
end
