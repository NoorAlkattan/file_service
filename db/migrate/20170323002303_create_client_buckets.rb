class CreateClientBuckets < ActiveRecord::Migration[5.0]
  def change
    create_table :client_buckets do |t|
      t.integer :client_id
      t.string :bucket_name

      t.timestamps
    end
    add_index :client_buckets, :client_id, unique: true
  end
end
