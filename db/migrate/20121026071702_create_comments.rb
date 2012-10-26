class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :ticket_id
      t.string :content
      t.string :from

      t.timestamps
    end
	add_index :comments, :ticket_id
  end
end
