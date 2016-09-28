class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|

      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
