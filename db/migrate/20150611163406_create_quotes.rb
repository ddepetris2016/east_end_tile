class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :project_id
      t.integer :amount
      t.integer :user_id
      t.integer :labor
      t.integer :material

      t.timestamps

    end
  end
end
