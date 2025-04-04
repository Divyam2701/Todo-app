#!/bin/bash
cd /home/ubuntu/todo-app || exit

# Ensure correct permissions
chmod -R 755 /home/ubuntu/todo-app

# Stop any running PM2 processes
pm2 stop all

# Start the application with PM2
pm2 start src/component/app.js --name "todo-app"
pm2 save
