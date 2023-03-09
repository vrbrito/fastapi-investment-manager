from fastapi import FastAPI
from mangum import Mangum

app = FastAPI(title="Investment Manager")

@app.get("/")
async def root():
    return {"message": "Hello World"}

handler = Mangum(app)
