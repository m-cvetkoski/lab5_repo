import os
from flask import Flask, render_template

app = Flask(__name__)
PORT = int(os.getenv('PORT', 5000))

@app.route("/")
def home():
    return render_template('index.html')

if __name__ == '__main__':
 app.run(host='0.0.0.0', port=PORT)
