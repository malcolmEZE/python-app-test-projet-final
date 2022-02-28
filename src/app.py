from flask import Flask

def create_app(config):
    app = Flask(__name__)
    app.config.from_object(config)

    @app.route('/index')
    def index():
        return 'Hello world, World I am happy to be here!'

    return app
