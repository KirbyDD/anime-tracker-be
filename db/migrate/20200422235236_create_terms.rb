class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.string :word
      t.string :definition
    end
  end
end
