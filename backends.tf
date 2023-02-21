terraform {
    backend "s3" {
        bucket = "mikey12345"
        key = "mikeydev"
        dynamodb_table = "mikeydb"
        region = "us-east-1"
    }
}