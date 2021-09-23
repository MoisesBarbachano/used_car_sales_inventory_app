namespace :car do
  desc 'depreciate_every_month'
  task :depreciate_every_month => [:environment] do
    Car.all.map do |car|
      price = car.price.to_f
      price -= (price * 0.02)
      car.update(price: price)
    end
  end
end