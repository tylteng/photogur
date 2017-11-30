class Picture < ApplicationRecord
  validates :artist, :title, :url, presence: true
  validates :title, length: {minimum: 3, maximum: 20}
  validates :url, uniqueness: true, :format => URI::regexp(%w(http https))

  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

  def self.created_year(year)
    Picture.where()
  end
end
