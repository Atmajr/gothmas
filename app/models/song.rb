class Song < ApplicationRecord

def self.search(search)
  if search
    search = search.to_str
    Song.where("title like ? or artist like ?", "%#{search}%", "%#{search}%")
    #find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
  else
    find(:all).limit(5)
  end
end

end
