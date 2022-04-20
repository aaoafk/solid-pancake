class CreateCakeStacks < ActiveRecord::Migration[7.0]
  def change
    create_table :cake_stacks do |t|
      t.text :script
      t.string :msg

      t.timestamps
    end
  end
end
