#!/bin/bash

echo "running CFS Scheduler Project..."
echo "=================================="

# navigate to build directory and run the scheduler
echo "running CFS Scheduler..."
cd build
./cfs_scheduler
cd ..

# activate virtual environment and run the plotting script
echo "generating visualization..."
source myvenv/bin/activate
python3 plot.py

echo "done check process_schedule_dark.png for the visualization."
echo "data is in process_schedule.csv"
