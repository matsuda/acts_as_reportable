class ActsAsReportableMigration < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.column :reportable_id, :integer
      t.column :reportable_type, :string
      t.column :status, :integer
      t.column :reason, :text
      t.timestamp
    end
    add_index :reports, [:reportable_id, :reportable_type]
  end
  
  def self.down
    drop_table :reports
  end
end
