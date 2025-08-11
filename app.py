from flask import Flask
import os

app = Flask(__name__)
DATA_PATH = '/data'
VISIT_FILE = os.path.join(DATA_PATH, 'visits.txt')

os.makedirs(DATA_PATH, exist_ok=True)
if not os.path.exists(VISIT_FILE):
    with open(VISIT_FILE, 'w') as f:
        f.write('0')

@app.route('/')
def index():
    with open(VISIT_FILE, 'r+') as f:
        n = int(f.read() or '0') + 1
        f.seek(0)
        f.write(str(n))
        f.truncate()
    return f"Visit Count: {n}\n"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)


