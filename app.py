from flask import Flask, Response

app = Flask(__name__)

@app.route('/')
def hello_world():
    return Response("<html><body style='background-color:white;'><h1>Hello World</h1></body></html>", mimetype='text/html')

@app.errorhandler(404)
def not_found(e):
    return Response("<html><body><h1>403 Forbidden</h1></body></html>", mimetype='text/html'), 403

@app.errorhandler(405)
def method_not_allowed(e):
    return Response("<html><body><h1>403 Forbidden</h1></body></html>", mimetype='text/html'), 403

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
