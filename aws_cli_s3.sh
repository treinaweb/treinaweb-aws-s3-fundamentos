#!/usr/bin/env sh

set -x

# Copy all files from a S3 prefix to local folder
aws s3 cp s3://tw-bucket-public/uploads . --recursive

# Copy all files from local folder to S3
aws s3 cp . s3://tw-bucket-public/uploads --recursive

# Copy all objects from one bucket to another
aws s3 cp s3://tw-bucket-public s3://tw-bucket-private --recursive

# Sync a local folder to a S3 prefix
aws s3 sync . s3://tw-bucket-public/uploads --acl public-read --remove
