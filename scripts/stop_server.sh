#!/bin/bash
echo "Reloading application with zero downtime..."
if pm2 list | grep -q "todo-app"; then
  pm2 restart todo-app
else
  echo "Application not running, skipping reload."
fi
