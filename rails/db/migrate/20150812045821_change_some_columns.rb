class ChangeSomeColumns < ActiveRecord::Migration
  def change
  	rename_column :teams, :primaryColor, :primary_color
  	rename_column :teams, :secondaryColor, :secondary_color
	rename_column :teams, :theScoreId, :thescore_id
  	rename_column :teams, :rssFeedId, :rss_feed_id
  end
end
