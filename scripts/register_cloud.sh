#!/usr/bin/bash


export DATOR_SERVER='http://dator.forge9.com';
sudo service stop cron;
rm -f ~/cloud.cfg;
source ~/team_name.sh;
python ~/barc/workspace/src/data_service/scripts/upload.py ;
export DATOR_SERVER='http://localhost:8000';
sudo service start cron;
