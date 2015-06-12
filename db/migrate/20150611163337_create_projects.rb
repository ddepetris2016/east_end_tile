class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_type
      t.string :material
      t.string :design
      t.text :description
      t.integer :square_feet
      t.string :home_type
      t.string :image
      t.integer :user_id

      t.timestamps

    end
  end
end
