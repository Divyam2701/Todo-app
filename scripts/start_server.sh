#!/bin/bash
cd /home/ubuntu/todo-app || exit

# Ensure correct permissions
sudo chmod -R 755 /home/ubuntu/todo-app

# Stop any running PM2 processes
cd /home/ubuntu/todo-app
pm2 stop all
# Start the application with PM2
pm2 start npm --name "todo-app" -- start
pm2 save
