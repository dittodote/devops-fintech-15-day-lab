def validate_payment(amount):

    if amount <= 0:
        return "Invalid payment amount"

    if amount > 100000:
        return "Payment limit exceeded"

    return "Payment successful"
