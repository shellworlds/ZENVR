# Quantum Flight Search - Installation Guide

## One-Line Installation
Run the complete setup script:
```bash
chmod +x scripts/install_dependencies.sh && ./scripts/install_dependencies.sh
System Requirements
OS: Ubuntu 24.04 (Linux), macOS 12+, Windows WSL2

RAM: 16GB minimum (32GB recommended)

Storage: 10GB free space

Python: 3.10+

Quick Start
Clone repository: git clone https://github.com/shellworlds/ZENVR.git

Create environment: conda create -n quantum_flight_app python=3.10

Activate: conda activate quantum_flight_app

Install: pip install -r requirements.txt

Run quantum optimizer: python src/quantum/flight_optimizer.py

Platform-Specific Notes
Ubuntu/Linux: Native support, best performance

macOS: Requires brew install libomp

Windows: Use WSL2 Ubuntu for optimal compatibility

Verification
Run test: python -m pytest tests/test_basic.py

Project URL
https://github.com/shellworlds/ZENVR
