class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :coffee

  def receipt
    puts "#{customer.name} ordered a #{coffee.title} for $#{price}"
  end

  def most_expensive
    #bonus
    puts "this is a bonus deliverable that hasn't been completed yet."
  end

end