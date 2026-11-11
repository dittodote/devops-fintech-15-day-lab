import unittest

from app import validate_payment


class PaymentTests(unittest.TestCase):

    def test_successful_payment(self):
        self.assertEqual(
            validate_payment(500),
            "Payment successful"
        )

    def test_invalid_payment(self):
        self.assertEqual(
            validate_payment(0),
            "Invalid payment"
        )

    def test_limit_exceeded(self):
        self.assertEqual(
            validate_payment(150000),
            "Limit exceeded"
        )


if __name__ == "__main__":
    unittest.main()
