class Read < ApplicationRecord
  def self.hot_reads
    select('reads.url')
      .where('reads.created_at > ?', Time.now - 1.day)
      .group("reads.url")
      .order('count("reads".id) DESC').limit(10)
  end
end
