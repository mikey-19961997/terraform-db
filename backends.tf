terraform {
    backend "s3" {
        bucket = "mikey12345"
        key = "mikeydev"
        region = "us-east-1"
        dynamodb_table = "mikeydb" 
    }
}