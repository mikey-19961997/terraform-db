terraform {
    backend "s3" {
        bucket = "mikey123456"
        key = "mikeydev"
        region = "us-east-1"
        dynamodb_table = "mikeydb"
    }
}