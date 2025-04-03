
from fastapi import FastAPI, Request
from fastapi.middleware.cors import CORSMiddleware

import pathlib
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles
from fastapi.responses import HTMLResponse
app = FastAPI(title="Sneha app")


# Allow frontend requests
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


# FastAPI Web Application with Dynamic HTML Templates
BASE_DIR = pathlib.Path(__file__).parent
templates = Jinja2Templates(directory=[
    BASE_DIR / "templates",
])

app.mount("/static", StaticFiles(directory=BASE_DIR/"static", html = True), name="static")

@app.get('/', response_class=HTMLResponse)
async def index(request: Request):
    
    context = {
        "request": request,
        "title": "Home Page"
    }
    response = templates.TemplateResponse("index.html", context)
    return response
