class CreateProgrammerClients < ActiveRecord::Migration[7.1]
  def change
    create_table :programmer_clients do |t|
      t.references :client, null: false, foreign_key: true
      t.references :programmer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
