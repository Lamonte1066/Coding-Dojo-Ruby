class CreateCamps < ActiveRecord::Migration
  def change
    create_table :camps do |t|
      t.string :branch
      t.string :street
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
