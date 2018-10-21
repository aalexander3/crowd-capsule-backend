class Location < ApplicationRecord
  has_many :uploads

  def self.random
    self.all.sample
  end

  def self.highestCount
    nums = self.all.map{|location| location.uploads.count}
    nums.max_by{|number| number} 
  end

end
