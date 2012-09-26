class CreateEmailLists < ActiveRecord::Migration
  def change
    create_table :email_lists do |t|
      t.string :mail

      t.timestamps
    end
  end
end
