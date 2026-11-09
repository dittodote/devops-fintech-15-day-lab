from http.server import BaseHTTPRequestHandler, HTTPServer


class PaymentHandler(BaseHTTPRequestHandler):

    def do_GET(self):

        self.send_response(200)
        self.send_header("Content-Type", "text/plain")
        self.end_headers()

        self.wfile.write(
            b"FinTech Payment Application Running"
        )


server = HTTPServer(("0.0.0.0", 8080), PaymentHandler)

print("Payment service started")

server.serve_forever()
