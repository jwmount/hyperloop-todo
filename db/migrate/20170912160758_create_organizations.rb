class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.integer, :name
      t.integer :todo_id

      t.timestamps
    end
  end
end
