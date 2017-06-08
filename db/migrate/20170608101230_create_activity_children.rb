class CreateActivityChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_children do |t|
      t.references :activity
      t.references :child
      t.datetime :check_in
      t.datetime :check_out
    end
  end
end
