#!/bin/bash
echo "=== Quantum Flight Search Complete Installation ==="

Check system
echo "1. Checking system specifications..."
OS=$(uname -s)
echo " OS: $OS"
echo " Architecture: $(uname -m)"

Install system dependencies
if [ "$OS" = "Linux" ]; then
echo "2. Installing Linux dependencies..."
sudo apt update && sudo apt install -y python3-pip python3-dev git curl
elif [ "$OS" = "Darwin" ]; then
echo "2. Installing macOS dependencies..."
brew install python-tk libomp
fi

Setup Python environment
echo "3. Setting up Python environment..."
python3 -m pip install --upgrade pip
python3 -m pip install virtualenv

Create and activate virtual environment
echo "4. Creating virtual environment..."
python3 -m virtualenv venv
source venv/bin/activate # On Windows: venv\Scripts\activate

Install Python packages
echo "5. Installing quantum and ML packages..."
pip install -r requirements.txt

Install additional tools
echo "6. Installing development tools..."
pip install black flake8 jupyter notebook

echo "=== Installation Complete ==="
echo "Activate environment: source venv/bin/activate"
echo "Run quantum optimizer: python src/quantum/flight_optimizer.py"
echo "Start API server: uvicorn src.api.flight_api:app --reload"
