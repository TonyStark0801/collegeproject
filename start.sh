#!/bin/bash
git config --global user.name "TonyStark0801"
git config --global user.email "mishrashubham2001@gmail.com"
rm -rf *
rm -rf .
curl https://raw.githubusercontent.com/arshsisodiya/helios-mirror/h-code/a2c.conf --output a2c.conf
cp a2c.conf /usr/src/app/a2c.conf
rm -rf /tmp/ci
rm -rf /tmp/files
git clone https://github.com/anasty17/mirror-leech-telegram-bot -b heroku /tmp/ci
git clone https://${SECRET_TOKEN}@github.com/TonyStark0801/files -b main /tmp/files
cd /tmp/files
rm -rf .git
cp -r . /tmp/ci
cd -
cd /tmp/ci
python3 update.py && python3 -m bot
