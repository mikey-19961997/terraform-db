terraform {
    backend "s3" {
        bucket = "ravi1234567"
        key = "mikeydev"
        region = "us-east-1"
        dynamodb_table = "ravidb"
    }
}