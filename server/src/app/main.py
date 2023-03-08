from fastapi import FastAPI
from mangum import Mangum

app = FastAPI(title="App Name")

@app.get("/")
async def root():
    return {"message": "Hello World"}

handler = Mangum(app)
