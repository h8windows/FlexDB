class AddRemoteIdToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :remoteId, :string
  end
end
