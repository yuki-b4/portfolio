class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string :name, null: false
      t.text :message, null: false
      t.timestamps
    end
  end
end
