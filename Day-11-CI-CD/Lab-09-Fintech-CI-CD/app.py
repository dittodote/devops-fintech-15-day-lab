def validate_payment(amount):

    if amount <= 0:
        return "Invalid payment"

    if amount > 100000:
        return "Limit exceeded"

    return "Payment successful"


if __name__ == "__main__":

    print(validate_payment(500))
