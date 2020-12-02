echo 'Creating bucket...'
aws s3api create-bucket --bucket wchemz-master-account-map-cur-bucket --region us-east-1 && \
sleep 1
echo 'Success'

echo 'Adding bucket bucket policy...'
aws s3api put-bucket-policy --bucket wchemz-master-account-map-cur-bucket --policy file://bucket-policy.json && \
sleep 1
echo 'Success'

echo 'Adding MAP 2.0 tags...'
aws s3api put-bucket-tagging --bucket wchemz-master-account-map-cur-bucket --tagging file://bucket-tagging.json && \
sleep 1
echo 'Success'

echo 'Creating MAP 2.0 CUR named map-migrated-report...'
aws cur put-report-definition --report-definition file://map-cur.json
sleep 1
echo 'Success'