class CreateImages < ActiveRecord::Migration
    def change
        create_table :image_things do |t|
            t.string :description
            t.string :due
            t.string :image #image link
        end
    end
end
