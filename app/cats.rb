require 'opal'
require 'opal-jquery'
require 'pp'

class RedditCatDownloader
  def initialize
  end

  def fetch!(wrapper)
    HTTP.get("http://www.reddit.com/r/cats/top.json") do |resp|
      append_to_dom(resp)
    end
  end

  def append_to_dom(resp)
    resp.json.fetch('data').fetch('children').each do |c|
      Element.find('#redditMaster').append "<img src='#{c['data']['url']}'></img>"
    end
  end
end



Document.ready? do
  cat_analizer = RedditCatDownloader.new
  cat_analizer.fetch!
end
