# Create a scheduled task to run every 15 minutes as the Administrator user
windows_task 'chef-client' do
  user 'tim'
  password 'h@ckThePl@net'
  command 'chef-client'
  run_level :highest
  frequency :minute
  frequency_modifier 15
end

# Create a scheduled task to run every 2 days
windows_task 'chef-client' do
  command 'chef-client'
  run_level :highest
  frequency :daily
  frequency_modifier 2
end

# Create a scheduled task to run on specific days of the week
windows_task 'chef-client' do
  command 'chef-client'
  run_level :highest
  frequency :weekly
  day 'Mon, Thu'
end

# Create a scheduled task to run only once
windows_task 'chef-client' do
  command 'chef-client'
  run_level :highest
  frequency :once
  start_time '16:10'
end

# Create a scheduled task to run on current day every 3 weeks and delay upto 1 min
windows_task 'chef-client' do
  command 'chef-client'
  run_level :highest
  frequency :weekly
  frequency_modifier 3
  random_delay '60'
end

# Create a scheduled task to run weekly starting on Dec 28th 2018
windows_task 'chef-client 8' do
  command 'chef-client'
  run_level :highest
  frequency :weekly
  start_day '12/28/2018'
end

# Create a scheduled task to run every Monday, Friday every 2 weeks
windows_task 'chef-client' do
  command 'chef-client'
  run_level :highest
  frequency :weekly
  frequency_modifier 2
  day 'Mon, Fri'
end

# Create a scheduled task to run when computer is idle with idle duration 20 min
windows_task 'chef-client' do
  command 'chef-client'
  run_level :highest
  frequency :on_idle
  idle_time 20
end

# Delete a task named “old task”
windows_task 'old task' do
  action :delete
end

# Enable a task named “chef-client”
windows_task 'chef-client' do
  action :enable
end

# Disable a task named “ProgramDataUpdater” with TaskPath “\Microsoft\Windows\Application Experience\ProgramDataUpdater”
windows_task '\Microsoft\Windows\Application Experience\ProgramDataUpdater' do
  action :disable
end
