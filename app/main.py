from fastapi import FastAPI, Request
from datetime import datetime

app = FastAPI()

@app.get("/")
async def root(request: Request):
    return {
        "timestamp": datetime.utcnow().isoformat(),
        "ip": request.client.host
    }