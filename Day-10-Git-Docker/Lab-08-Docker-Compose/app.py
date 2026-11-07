from http.server import BaseHTTPRequestHandler, HTTPServer

class Handler(BaseHTTPRequestHandler):

    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-Type", "text/html")
        self.end_headers()

        self.wfile.write(
            b"<h1>FinTech Docker Compose Application</h1>"
            b"<p>Application is running!</p>"
        )

server = HTTPServer(("0.0.0.0", 8080), Handler)

print("Application listening on port 8080")

server.serve_forever()
