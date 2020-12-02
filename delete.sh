echo 'Removing CUR and S3 Bucket'
aws s3 rb s3://wchemz-master-account-map-cur-bucket --force ; aws cur --region us-east-1 delete-report-definition --report-name "map-migrated-report"
echo 'Success'