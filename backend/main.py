from mangum import Mangum
from backend.app import app
from backend import get, post, delete



handler = Mangum(app)
