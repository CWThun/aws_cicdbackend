#!/bin/bash

# Stop existing app (if running)
PID=$(pgrep -f oboss-demoapp-backend-0.0.1-SNAPSHOT.war)
if [ -n "$PID" ]; then
  kill -9 $PID
fi

# Run the app again
nohup java -jar /home/ec2-user/CICDBackend/oboss-demoapp-backend-0.0.1-SNAPSHOT.war > /home/ec2-user/CICDBackend/app.log 2>&1 &
