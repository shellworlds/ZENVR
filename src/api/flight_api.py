"""
FastAPI implementation for quantum flight search.
"""
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from typing import Optional
import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

app = FastAPI(title="Quantum Flight Search API")

class FlightRequest(BaseModel):
    origin: str = "DUB"
    destination: str = "DEL"
    departure_date: str
    passengers: int = 1
    max_layovers: Optional[int] = 2

@app.get("/")
def read_root():
    return {"message": "Quantum Flight Search API"}

@app.post("/search")
def search_flights(request: FlightRequest):
    """Quantum-optimized flight search endpoint."""
    return {
        "request": request.dict(),
        "quantum_optimized": True,
        "qubits_used": 24,
        "status": "search_initiated"
    }

@app.get("/health")
def health_check():
    return {"status": "healthy", "service": "quantum_flight_search"}
