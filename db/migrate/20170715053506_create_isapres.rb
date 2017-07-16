class CreateIsapres < ActiveRecord::Migration[5.0]
  def change
    create_table :isapres do |t|
      t.string :name
      t.string :description
      t.string :other

      t.timestamps
    end
  end
end
