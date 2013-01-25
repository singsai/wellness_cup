class CreateWeighIns < ActiveRecord::Migration
  def change
    create_table :weigh_ins do |t|
      t.integer :week
      t.float :weight
      t.string :member_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
