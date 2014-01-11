class AddHeroImageColumnsToArticles < ActiveRecord::Migration
  def change
    add_attachment :articles, :hero
  end
end
