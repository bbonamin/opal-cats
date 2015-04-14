require 'bundler'
Bundler.require

require 'opal'
require 'opal-jquery'

desc 'Build our app to cats.js'
task :build do
  Opal.append_path 'app'

  File.open('cats.js', 'w+') do |out|
    out << Opal::Builder.build('cats.rb')
  end
end
