set :output, "log/cron.log"

every 1.month do
  rake 'car:depreciate_every_month'
end
