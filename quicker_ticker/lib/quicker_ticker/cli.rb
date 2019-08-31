#require_relative "../quicker_ticker/yahoo_scraper.rb"
#require_relative "../quicker_ticker/stock.rb"
#require 'colorize'
  
class CommandLineInterface 
  
  def run
    input = nil
    puts "Hello, user! Welcome to QuickerTicker.".colorize(:green) 
    puts "This program can pull the current price, open price, beta, dividend, and yield, of a stock or ETF."
    puts "To begin pulling data, input an NYSE or NASDAQ ticker symbol of your choice."
    input = gets.strip
    stock = Stock.new(input)
    while input != "EXIT"
    puts "What would you like to know about #{stock.name}?"
    puts "Enter 'price', 'beta', 'open', 'dividend', or 'yield', to learn more."
    puts "Enter 'info' to see all information about #{stock.name}."
    puts "Type 'exit' to exit the program."
    input = gets.strip.upcase 
      if input == "NAME"
        puts stock.name
      elsif input == "PRICE"
        puts stock.price.colorize(:green)
      elsif input == "BETA"
        puts stock.beta.colorize(:green)
      elsif input == "OPEN"
        puts stock.open.colorize(:green)
      elsif input == "DIVIDEND"
        puts stock.dividend.colorize(:green)
      elsif input == "YIELD"
        puts stock.yield.colorize(:green)
      elsif input == "INFO"
        puts "#{stock.name}'s price is #{stock.price}.".colorize(:light_blue) 
        puts "The open price was #{stock.open}.".colorize(:light_blue) 
        puts "The beta is #{stock.beta} and the dividend is #{stock.dividend}.".colorize(:light_blue) 
        puts "This stock's yield is #{stock.yield}.".colorize(:light_blue) 
      end
    end
    puts "Thank you for using QuickerTicker!".colorize(:green)
  
  end
  
end

#CommandLineInterface.new.run