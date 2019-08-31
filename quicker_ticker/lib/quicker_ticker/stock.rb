#require_relative "../quicker_ticker/yahoo_scraper.rb"

class Stock
  
attr_accessor :name, :price, :open, :beta, :dividend, :yield
  
  @@all = []
  
  def initialize(stock_symbol)
    Scraper.new(stock_symbol).scrape_page.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end
  
  def self.all
    @@all
  end
    
end
  