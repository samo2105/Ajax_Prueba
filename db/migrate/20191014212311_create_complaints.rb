class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
