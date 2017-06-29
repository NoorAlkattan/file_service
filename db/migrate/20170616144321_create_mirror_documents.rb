class CreateMirrorDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :mirror_documents do |t|
      t.string :file, index: true
      t.string :client_id
      t.timestamps
    end
  end
end
