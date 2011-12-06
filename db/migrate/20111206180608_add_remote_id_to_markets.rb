class AddRemoteIdToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :remoteId, :string
  end
end
