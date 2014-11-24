class CreateStressers < ActiveRecord::Migration
  def change
    create_table :stressers do |t|
      t.string :description
      t.integer :point_value

      t.timestamps
    end
  end
end
