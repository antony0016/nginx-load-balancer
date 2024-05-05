import flask
import os

app = flask.Flask(__name__)
port = os.getenv('PORT', 80)


@app.route('/')
def hello():
    # show local IP address
    return f'Hello, I\'m {os.getenv("HOSTNAME")}:{port}'


@app.route('/health-check')
def health_check():
    return 'ok'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=port)
