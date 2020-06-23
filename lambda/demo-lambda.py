from __future__ import print_function

import json
import boto3
import os
import urllib as u

sns = boto3.client('sns')
sqs = boto3.resource('sqs')
s3 = boto3.resource('s3')

topic_arn = 'arn:aws:sns:us-west-2:576148543134:demo-topic'
queue_url = 'https://sqs.us-west-2.amazonaws.com/576148543134/demo-queue'
s3_bucket_landing = 'demo.ingress.landing'
s3_landing = s3.Bucket(s3_bucket_landing)
file_prefix = 'data'
'demo.ingress.landing' 
#/bu/app/customer/data/
file_name = 'users.json'

def lambda_handler(event, context):
    
    data = get_api_data(event,context)
    push_s3(event,context,data)
    push_sns(event,context)
    push_sqs(event,context)
    
    return {
        'statusCode': 200,
        'body': json.dumps('lambda.fn_test.success')
    }

def get_api_data(event,context):
    #print(event)
    params = event #{"url":"https://x37sv76kth.execute-api.us-west-1.amazonaws.com/prod/users","encoding":"utf-8","watermark_start":0, "watermark_end":10,"batch":10 , "retry":2}
    lst = []
    retry = params.get('retry',0)
    retry_i = 0
    batch = params.get('batch',10)
    wmk_start = params.get('watermark_start',0)
    wmk_end = params.get('watermark_end',batch)
    
    #req = u.request.urlopen(params.get('url') + '?page='+ str(0))
    #data = req.read()
    #data = {"id":0,"data":{"gender":"male","name":{"title":"mr","first":"wayne","lastn":"simpson"},"location":{"street":"3903 strand road","city":"lusk","state":"wicklow","postcode":93074},"email":"wayne.simpson@example.com"}}
    data = [{"id":0,"data":{"gender":"male","name":{"title":"mr"}}},{"id":1,"data":{"gender":"femal","name":{"title":"mrs"}}}]

    return data 
    
def push_s3(event,context,data):
    s3_obj = s3.Object(s3_bucket_landing,'data.json')
    s3_obj.put(Body=str(event))
    
def push_sns(event, context):
    sns.publish(TopicArn=topic_arn,Message=str(event))

def push_sqs(event, context):
    queue = sqs.Queue(queue_url)
    queue.send_message(MessageBody=str(event))