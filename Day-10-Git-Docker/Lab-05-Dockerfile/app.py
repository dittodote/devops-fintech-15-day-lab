from http.server import BaseHTTPRequestHandler, HTTPServer

class PaymentHandler(BaseHTTPRequestHandler):

    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()

        response = """
        <html>
            <head><title>FinTech Payment App</title></head>
            <body>
                <h1>FinTech Payment Application</h1>
                <p>Docker container is running successfully!</p>
                <p>Payment Service: Healthy</p>
            </body>
        </html>
        """

        self.wfile.write(response.encode())

server = HTTPServer(("0.0.0.0", 8080), PaymentHandler)

print("FinTech application running on port 8080")

server.serve_forever()
