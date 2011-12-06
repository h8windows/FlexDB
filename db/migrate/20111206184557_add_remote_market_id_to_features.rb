class AddRemoteMarketIdToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :remoteMarketId, :string
  end
end
