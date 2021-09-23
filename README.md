# README

Steps
NOTES: Rails 6.0.4.1 and MongoDB v3.6.8
  1. git clone https://github.com/MoisesBarbachano/used_car_sales_inventory_app.git
  2. Execute the next command: (this will create demo data to use the app)
      rake initialize_app:generate_users
  3. Access to localhost:3000
  4. Login with the next credentials to login in Admin role for a user of "Dealership A":
      email: admin_a@gmail.com
      password: 1223334444
  5. If you want to login in User role of "Dealership A" (This role can't add ande delete cars from the inventory) use:
      email: user_a@gmail.com
      password: 1223334444
  6. You also can login with users of "Dealership B":
      email: admin_a@gmail.com'
      password: 1223334444
      email: admin_b@gmail.com'
      password: 1223334444
  7. To execute the unit tests (made with Rspec) you just need to execute the next command (There are two files of unit tests -> car_spec.rb and dealership_spec.rb):
      rspec
  8. NOTE: To detect the depreciation of prices every month you need to execute the app in production mode. Execute the next command to start the app in production mode:
      RAILS_ENV=production rails s
