require 'bundler/gem_tasks'
require 'open-uri'

desc 'Download the latest remedy.css'
task :update do
  puts "[#{Time.now}] Start: Updating remedy.css"
  url = 'https://raw.githubusercontent.com/mozdevs/cssremedy/master/remedy.css'
  outputfile = 'vendor/assets/stylesheets/cssremedy-rails/remedy.css'

  File.open(outputfile, 'wb') do |file|
    file << URI.parse(url).open.read
  end
  puts "[#{Time.now}] Finished: Updating remedy.css"
end
