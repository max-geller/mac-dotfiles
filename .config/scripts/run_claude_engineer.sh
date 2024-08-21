#!/bin/bash

# Load the Minimal Starship Configuration
export STARSHIP_CONFIG=/Users/maxgeller/.config/pure_starship.toml
clear

# Set the Angular project directory
ANGULAR_DIR="/Users/maxgeller/code/Angular"

# Navigate to the claude-engineer directory
cd /Users/maxgeller/claude-engineer

# Create and activate a virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi
source venv/bin/activate

# Install requirements
pip install -r requirements.txt

# Clear the terminal again before running main.py
clear

# Change to the Angular project directory
cd "$ANGULAR_DIR"

# Run the main.py script
python /Users/maxgeller/claude-engineer/main.py