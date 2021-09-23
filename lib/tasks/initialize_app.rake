namespace :initialize_app do
  desc "TODO"
  task generate_users: :environment do |t, args|
    dealership_a = Dealership.where(name: 'Dealership A').first_or_create
    dealership_b = Dealership.where(name: 'Dealership B').first_or_create

    User.where(
      email: 'admin_a@gmail.com',
      password: '1223334444',
      password_confirmation: '1223334444',
      role: :admin,
      dealership: dealership_a
    ).first_or_create

    User.where(
      email: 'user_a@gmail.com',
      password: '1223334444',
      password_confirmation: '1223334444',
      role: :user,
      dealership: dealership_a
    ).first_or_create

    User.where(
      email: 'admin_b@gmail.com',
      password: '1223334444',
      password_confirmation: '1223334444',
      role: :admin,
      dealership: dealership_b
    ).first_or_create

    User.where(
      email: 'user_b@gmail.com',
      password: '1223334444',
      password_confirmation: '1223334444',
      role: :user,
      dealership: dealership_b
    ).first_or_create

    Car.where(
      name: 'Ford Mustang',
      price: 5000.99,
      condition: :new_car,
      dealership: dealership_a
    ).first_or_create

    Car.where(
      name: 'Mazda MX-5',
      price: 1200.50,
      condition: :used,
      dealership: dealership_a
    ).first_or_create

    Car.where(
      name: 'Ford Figo',
      price: 2200.50,
      condition: :new_car,
      dealership: dealership_b
    ).first_or_create

    Car.where(
      name: 'Ford Fiesta',
      price: 1100.20,
      condition: :used,
      dealership: dealership_b
    ).first_or_create
  end
end
