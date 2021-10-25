from flask import Flask  # Import Flask
from flask import render_template  # Import render template function

app = Flask(__name__)

@app.route('/backend')
def count():
    return {"count": 1}

if __name__ == '__main__':
    app.debug = True
    app.run("0.0.0.0", 5000, debug=True)
