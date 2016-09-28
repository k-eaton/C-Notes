class CreateNotebooks < ActiveRecord::Migration[5.0]
  def change
    create_table :notebooks do |t|

      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
