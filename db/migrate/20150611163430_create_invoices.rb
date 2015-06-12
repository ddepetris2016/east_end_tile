class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :project_id
      t.integer :amount
      t.integer :labor
      t.integer :user_id
      t.integer :material

      t.timestamps

    end
  end
end
