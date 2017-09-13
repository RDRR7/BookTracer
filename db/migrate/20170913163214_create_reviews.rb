class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :book
      t.string :author
      t.string :reviewer
      t.string :link
      t.string :summary

      t.timestamps
    end
  end
end
