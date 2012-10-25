class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.string :customer_name
      t.string :customer_email
      t.string :title
      t.string :content
      t.string :department
      t.string :status, :null => false, :default => "Waiting for staff"
      t.string :url

      t.timestamps
    end
	add_index :tickets, :user_id
  end
end
