terraform {
    backend "s3" {
        bucket = "mikey19971996"
        key = "mikeydev"
        region = "us-east-1"
        dynamodb_table = "mikeydb1"
    }
}