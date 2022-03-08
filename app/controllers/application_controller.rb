class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/customers" do
    customers = Customer.all
    customers.to_json
  end

  get "/items" do
    items = Item.all
    items.to_json
  end

  get "/orders/:num/:percent" do
    Customer.create_orders(params[:num], params[:percent])
    orders = Order.all
    orders.to_json
  end 

end
