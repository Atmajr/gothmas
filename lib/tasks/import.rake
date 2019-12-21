namespace :setup do
  desc "This take does something useful!"

  task :import => :environment do
    #path = './import.csv'
    CSV.foreach("import.csv", headers: false) do |row|
        song = Song.new
        song.karafun_id = row[0]
        song.title = row[1]
        song.artist = row[2]
        song.save
    end
  end
end
