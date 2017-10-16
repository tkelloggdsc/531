class CreateLifts < ActiveRecord::Migration[5.1]
  def change
    create_table :lifts do |t|

      t.timestamps
    end
  end
end
