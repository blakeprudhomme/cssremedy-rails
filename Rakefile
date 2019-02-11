require "bundler/gem_tasks"
require 'open-uri'

desc "Download the latest remedy.css"
task :update do
  url = "https://raw.githubusercontent.com/mozdevs/cssremedy/master/remedy.css"
  outputfile = "vendor/assets/stylesheets/cssremedy-rails/remedy.css"

  open(outputfile, 'wb') do |file|
    file << open(url).read
  end
end
