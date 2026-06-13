from todo_project import app
from werkzeug.serving import WSGIRequestHandler


class HiddenServerHandler(WSGIRequestHandler):
    def version_string(self):
        return 'webserver'


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=False,  # nosec B104 - intentional for container
            request_handler=HiddenServerHandler)
