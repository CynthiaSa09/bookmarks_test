class DashboardController < ApplicationController
  def index
    @bookmarks = Bookmark.joins(:categories).group("categories.name").count
  end
end
