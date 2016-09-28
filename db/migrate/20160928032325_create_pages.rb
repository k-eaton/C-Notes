class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|

      t.text :sidebar
      t.text :notes
      t.text :summary
      t.integer :page_number

      t.timestamps
    end
  end
end
