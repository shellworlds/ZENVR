#!/bin/bash
echo "Installing Quantum Flight Search dependencies..."
pip install -r requirements.txt
echo "Installing development dependencies..."
pip install black flake8 pytest
echo "Installation complete!"
