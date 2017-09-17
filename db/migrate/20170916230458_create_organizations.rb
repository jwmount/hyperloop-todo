class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|

      t.integer :todo_id
      t.string :name
      t.string :street

      t.timestamps
    end
  end
end
