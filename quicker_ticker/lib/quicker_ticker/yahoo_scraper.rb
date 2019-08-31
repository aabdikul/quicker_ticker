#require 'nokogiri'
#require 'pry'
#require 'open-uri'

class Scraper

attr_accessor :finance_data, :doc

def initialize(stock_symbol)
  @doc = Nokogiri::HTML(open("https://www.marketwatch.com/investing/fund/#{stock_symbol}"))
  @finance_data = {}
end

  def scrape_page()

    @finance_data[:price] = @doc.css(".intraday__price").css(".value").text
    @finance_data[:name] = @doc.css(".company__name").text

    @doc.css(".kv__item").each do |item|
      if item.css(".kv__label").text == "Open" || item.css(".kv__label").text == "Beta" || item.css(".kv__label").text == "Dividend"     || item.css(".kv__label").text == "Yield"
      @finance_data[item.css(".kv__label").text.downcase.to_sym] = item.css(".kv__value.kv__primary").text
      end
    end

    return @finance_data
  end

end
