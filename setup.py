from setuptools import setup, find_packages

setup(
    name="quantum-flight-search",
    version="0.1.0",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
    install_requires=[
        "qiskit>=1.0.0",
        "cirq-core>=1.3.0",
        "numpy>=1.24.0",
        "pandas>=2.0.0",
        "scikit-learn>=1.3.0",
    ],
    python_requires=">=3.10",
)
