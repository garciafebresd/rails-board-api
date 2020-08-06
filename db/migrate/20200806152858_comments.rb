class Comments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :description

      t.belongs_to :user,
                    index: true,
                    foreign_key: { to_table: :users }

      t.belongs_to :card,
                    index: true,
                    foreign_key: { to_table: :cards }

      t.timestamps
    end
  end
end
