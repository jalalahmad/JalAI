#!/bin/bash
# To use this testing script locally, install `expect` (e.g., `sudo apt-get install expect`)
# and ensure you have `openttd` installed and correctly linked to your AI.
# Usage: ./tests/run_headless_test.sh

# Run OpenTTD in headless mode using expect to auto-unpause and start the AI
expect << 'EOD'
set timeout 600
spawn /usr/games/openttd -D -g -d script=7,console=7,cmd=7,gamelog=3,net=0
expect "Game Console"
sleep 2
send "start_ai JalAI\r"
# Sleep for 5 real-time minutes to allow the AI to simulate several game months
sleep 300
send "quit\r"
expect eof
EOD
