class Cards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :description

      t.belongs_to :user,
                    index: true,
                    foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
