import json

def lambda_handler(event, context):
    """
    Sample Lambda function that processes an event and returns a response.
    """
    response = {
        "statusCode": 200,
        "body": json.dumps({"message": "Hello from my Terraform-deployed Lambda!"}),
    }
    return response
