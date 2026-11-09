import unittest

from payment import validate_payment


class TestPayment(unittest.TestCase):

    def test_valid_payment(self):
        result = validate_payment(500)
        self.assertEqual(result, "Payment successful")

    def test_invalid_payment(self):
        result = validate_payment(0)
        self.assertEqual(result, "Invalid payment amount")

    def test_payment_limit(self):
        result = validate_payment(150000)
        self.assertEqual(result, "Payment limit exceeded")


if __name__ == "__main__":
    unittest.main()
