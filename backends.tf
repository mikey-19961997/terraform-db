terraform {
    backend "s3" {
        bucket = "mikey1234567"
        key = "mikeydev"
        region = "us-east-1"
        dynamodb_table = "mikeydb3"
    }
}