class Coffee < ActiveRecord::Base
  has_many :orders
  has many :customers, through: :orders

  def unique_customer_names
    customers.distinct.pluck(:name)
  end

  def self.most_ordered
    #get all the Coffee instances (include orders) and get the coffee instance with the most orders.
    Coffee.all.includes(:orders).max_by {|coffee| coffee.orders.length}
  end

end