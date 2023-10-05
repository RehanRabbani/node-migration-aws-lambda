serverless invoke local --function asyncHandler --data '{
    "Records": [
        {
            "messageId": "1b3d447f-9499-442a-8e97-3129b62c4d9a",
            "receiptHandle": "AQEBeubTGaN9wI2rOh27426srq0MtSpBnkU73gAZDXvS9DQKfSr/mtVqhZmMyiNHUjfEnMgBv/ZfAYPeUJct7LiKn4rv5onYtzgdl0Sy/PErxkDq0iV9iwkbon7mo5HTfjLco9GPnwbA6pBi4UA874j2b7g1wvgToo8AnKEP8HxewL/VHory3wbqIYup56ItFnlz2whnQ0crBlc7PMhdNk4c6JI6Nb7abv5K6jJEeyITgrfbYQdrf28YHRvUX4ssu+huMmF6OPi9IqpQ7f/p+yXKbCAee1x+r4ylP91ZKoQdaE2ES96oqmuATTign5Q2C2QZNrDXCO0TI3Y74hmf6oGBfZ5bCjmEW0vGDJvvvm3n6WXes2WgiGjsX91gSiRLbIo9+1YlkLYyxi1RKx0NAiMkXkTrZB7CGQWYdpphVsOfaWE=",
            "body": "{\n  \"trialId\" : \"cebda232-fe43-48b4-8791-7f1845ed31c2\",\n  \"siteId\" : \"d227998c-cd22-4f0f-9839-2764780b2b2e\",\n  \"carePlanId\" : \"c1f994b0-022f-4a98-bc2e-ecf5fb347e00\",\n  \"createV2Data\" : \"true\",\n  \"createAuditLog\" : \"true\",\n  \"tenantId\" : \"loki\",\n  \"sourceHost\" : \"true\"\n}",
            "attributes": {
                "ApproximateReceiveCount": "1",
                "SentTimestamp": "1666035153774",
                "SenderId": "AIDAIYLAVTDLUXBIEIX46",
                "ApproximateFirstReceiveTimestamp": "1666035153780"
            },
            "messageAttributes": {},
            "md5OfBody": "85ab1630e77d6a979d5ecc5a47121a25",
            "eventSource": "aws:sqs",
            "eventSourceARN": "arn:aws:sqs:us-west-2:125900505984:TEST_FormTemplateCreated",
            "awsRegion": "us-west-2"
        }
    ]
}'
           