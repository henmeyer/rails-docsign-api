class CreateSignatures < ActiveRecord::Migration[7.1]
  def change
    create_table :signatures do |t|
      t.references :document, null: false, foreign_key: true
      t.string :signer_email
      t.integer :status

      t.timestamps
    end
  end
end
