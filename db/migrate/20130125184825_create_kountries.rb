class CreateKountries < ActiveRecord::Migration
  def change
    create_table :kountries do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
