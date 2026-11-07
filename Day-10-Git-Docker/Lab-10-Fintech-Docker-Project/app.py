from http.server import BaseHTTPRequestHandler, HTTPServer
import json

class PaymentHandler(BaseHTTPRequestHandler):

    def do_GET(self):

        if self.path == "/health":
            response = {
                "application": "FinTech Payment Service",
                "status": "healthy"
            }

        elif self.path == "/payments":
            response = {
                "service": "Payment Processing",
                "status": "available"
            }

        else:
            response = {
                "message": "Welcome to FinTech Payment Application"
            }

        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.end_headers()

        self.wfile.write(json.dumps(response).encode())


server = HTTPServer(("0.0.0.0", 8080), PaymentHandler)

print("FinTech Payment Service running on port 8080")

server.serve_forever()
