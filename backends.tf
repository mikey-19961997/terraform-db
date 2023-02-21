terraform {
    backend "s3" {
        bucket = "rockstar12345"
        key = "mikeydev"
        region = "us-east-1"
        dynamodb_table = "rockstardb"
    }
}