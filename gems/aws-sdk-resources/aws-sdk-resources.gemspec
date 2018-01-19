Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk-resources'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS SDK for Ruby'
  spec.description   = 'The official AWS SDK for Ruby. Provides both resource oriented interfaces and API clients for AWS services.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = 'bin'
  spec.executables   << 'aws-v3.rb'

  # service gems
  spec.add_dependency('aws-sdk-acm', '~> 1')
  spec.add_dependency('aws-sdk-apigateway', '~> 1')
  spec.add_dependency('aws-sdk-alexaforbusiness', '~> 1')
  spec.add_dependency('aws-sdk-appstream', '~> 1')
  spec.add_dependency('aws-sdk-appsync', '~> 1')
  spec.add_dependency('aws-sdk-applicationautoscaling', '~> 1')
  spec.add_dependency('aws-sdk-applicationdiscoveryservice', '~> 1')
  spec.add_dependency('aws-sdk-athena', '~> 1')
  spec.add_dependency('aws-sdk-autoscaling', '~> 1')
  spec.add_dependency('aws-sdk-autoscalingplans', '~> 1')
  spec.add_dependency('aws-sdk-batch', '~> 1')
  spec.add_dependency('aws-sdk-budgets', '~> 1')
  spec.add_dependency('aws-sdk-cloud9', '~> 1')
  spec.add_dependency('aws-sdk-clouddirectory', '~> 1')
  spec.add_dependency('aws-sdk-cloudformation', '~> 1')
  spec.add_dependency('aws-sdk-cloudfront', '~> 1')
  spec.add_dependency('aws-sdk-cloudhsm', '~> 1')
  spec.add_dependency('aws-sdk-cloudhsmv2', '~> 1')
  spec.add_dependency('aws-sdk-cloudsearch', '~> 1')
  spec.add_dependency('aws-sdk-cloudsearchdomain', '~> 1')
  spec.add_dependency('aws-sdk-cloudtrail', '~> 1')
  spec.add_dependency('aws-sdk-cloudwatch', '~> 1')
  spec.add_dependency('aws-sdk-cloudwatchevents', '~> 1')
  spec.add_dependency('aws-sdk-cloudwatchlogs', '~> 1')
  spec.add_dependency('aws-sdk-codebuild', '~> 1')
  spec.add_dependency('aws-sdk-codecommit', '~> 1')
  spec.add_dependency('aws-sdk-codedeploy', '~> 1')
  spec.add_dependency('aws-sdk-codepipeline', '~> 1')
  spec.add_dependency('aws-sdk-codestar', '~> 1')
  spec.add_dependency('aws-sdk-cognitoidentity', '~> 1')
  spec.add_dependency('aws-sdk-cognitoidentityprovider', '~> 1')
  spec.add_dependency('aws-sdk-cognitosync', '~> 1')
  spec.add_dependency('aws-sdk-comprehend', '~> 1')
  spec.add_dependency('aws-sdk-configservice', '~> 1')
  spec.add_dependency('aws-sdk-costexplorer', '~> 1')
  spec.add_dependency('aws-sdk-costandusagereportservice', '~> 1')
  spec.add_dependency('aws-sdk-dax', '~> 1')
  spec.add_dependency('aws-sdk-datapipeline', '~> 1')
  spec.add_dependency('aws-sdk-databasemigrationservice', '~> 1')
  spec.add_dependency('aws-sdk-devicefarm', '~> 1')
  spec.add_dependency('aws-sdk-directconnect', '~> 1')
  spec.add_dependency('aws-sdk-directoryservice', '~> 1')
  spec.add_dependency('aws-sdk-dynamodb', '~> 1')
  spec.add_dependency('aws-sdk-dynamodbstreams', '~> 1')
  spec.add_dependency('aws-sdk-ec2', '~> 1')
  spec.add_dependency('aws-sdk-ecr', '~> 1')
  spec.add_dependency('aws-sdk-ecs', '~> 1')
  spec.add_dependency('aws-sdk-efs', '~> 1')
  spec.add_dependency('aws-sdk-emr', '~> 1')
  spec.add_dependency('aws-sdk-elasticache', '~> 1')
  spec.add_dependency('aws-sdk-elasticbeanstalk', '~> 1')
  spec.add_dependency('aws-sdk-elasticloadbalancing', '~> 1')
  spec.add_dependency('aws-sdk-elasticloadbalancingv2', '~> 1')
  spec.add_dependency('aws-sdk-elastictranscoder', '~> 1')
  spec.add_dependency('aws-sdk-elasticsearchservice', '~> 1')
  spec.add_dependency('aws-sdk-firehose', '~> 1')
  spec.add_dependency('aws-sdk-gamelift', '~> 1')
  spec.add_dependency('aws-sdk-glacier', '~> 1')
  spec.add_dependency('aws-sdk-glue', '~> 1')
  spec.add_dependency('aws-sdk-greengrass', '~> 1')
  spec.add_dependency('aws-sdk-guardduty', '~> 1')
  spec.add_dependency('aws-sdk-health', '~> 1')
  spec.add_dependency('aws-sdk-iam', '~> 1')
  spec.add_dependency('aws-sdk-importexport', '~> 1')
  spec.add_dependency('aws-sdk-inspector', '~> 1')
  spec.add_dependency('aws-sdk-iot', '~> 1')
  spec.add_dependency('aws-sdk-iotdataplane', '~> 1')
  spec.add_dependency('aws-sdk-iotjobsdataplane', '~> 1')
  spec.add_dependency('aws-sdk-kms', '~> 1')
  spec.add_dependency('aws-sdk-kinesis', '~> 1')
  spec.add_dependency('aws-sdk-kinesisanalytics', '~> 1')
  spec.add_dependency('aws-sdk-kinesisvideo', '~> 1')
  spec.add_dependency('aws-sdk-kinesisvideoarchivedmedia', '~> 1')
  spec.add_dependency('aws-sdk-kinesisvideomedia', '~> 1')
  spec.add_dependency('aws-sdk-lambda', '~> 1')
  spec.add_dependency('aws-sdk-lambdapreview', '~> 1')
  spec.add_dependency('aws-sdk-lex', '~> 1')
  spec.add_dependency('aws-sdk-lexmodelbuildingservice', '~> 1')
  spec.add_dependency('aws-sdk-lightsail', '~> 1')
  spec.add_dependency('aws-sdk-mq', '~> 1')
  spec.add_dependency('aws-sdk-mturk', '~> 1')
  spec.add_dependency('aws-sdk-machinelearning', '~> 1')
  spec.add_dependency('aws-sdk-marketplacecommerceanalytics', '~> 1')
  spec.add_dependency('aws-sdk-marketplaceentitlementservice', '~> 1')
  spec.add_dependency('aws-sdk-marketplacemetering', '~> 1')
  spec.add_dependency('aws-sdk-mediaconvert', '~> 1')
  spec.add_dependency('aws-sdk-medialive', '~> 1')
  spec.add_dependency('aws-sdk-mediapackage', '~> 1')
  spec.add_dependency('aws-sdk-mediastore', '~> 1')
  spec.add_dependency('aws-sdk-mediastoredata', '~> 1')
  spec.add_dependency('aws-sdk-migrationhub', '~> 1')
  spec.add_dependency('aws-sdk-mobile', '~> 1')
  spec.add_dependency('aws-sdk-opsworks', '~> 1')
  spec.add_dependency('aws-sdk-opsworkscm', '~> 1')
  spec.add_dependency('aws-sdk-organizations', '~> 1')
  spec.add_dependency('aws-sdk-pinpoint', '~> 1')
  spec.add_dependency('aws-sdk-polly', '~> 1')
  spec.add_dependency('aws-sdk-pricing', '~> 1')
  spec.add_dependency('aws-sdk-rds', '~> 1')
  spec.add_dependency('aws-sdk-redshift', '~> 1')
  spec.add_dependency('aws-sdk-rekognition', '~> 1')
  spec.add_dependency('aws-sdk-resourcegroups', '~> 1')
  spec.add_dependency('aws-sdk-resourcegroupstaggingapi', '~> 1')
  spec.add_dependency('aws-sdk-route53', '~> 1')
  spec.add_dependency('aws-sdk-route53domains', '~> 1')
  spec.add_dependency('aws-sdk-s3', '~> 1')
  spec.add_dependency('aws-sdk-ses', '~> 1')
  spec.add_dependency('aws-sdk-sms', '~> 1')
  spec.add_dependency('aws-sdk-sns', '~> 1')
  spec.add_dependency('aws-sdk-sqs', '~> 1')
  spec.add_dependency('aws-sdk-ssm', '~> 1')
  spec.add_dependency('aws-sdk-swf', '~> 1')
  spec.add_dependency('aws-sdk-sagemaker', '~> 1')
  spec.add_dependency('aws-sdk-sagemakerruntime', '~> 1')
  spec.add_dependency('aws-sdk-serverlessapplicationrepository', '~> 1')
  spec.add_dependency('aws-sdk-servicecatalog', '~> 1')
  spec.add_dependency('aws-sdk-servicediscovery', '~> 1')
  spec.add_dependency('aws-sdk-shield', '~> 1')
  spec.add_dependency('aws-sdk-simpledb', '~> 1')
  spec.add_dependency('aws-sdk-snowball', '~> 1')
  spec.add_dependency('aws-sdk-states', '~> 1')
  spec.add_dependency('aws-sdk-storagegateway', '~> 1')
  spec.add_dependency('aws-sdk-support', '~> 1')
  spec.add_dependency('aws-sdk-transcribeservice', '~> 1')
  spec.add_dependency('aws-sdk-translate', '~> 1')
  spec.add_dependency('aws-sdk-waf', '~> 1')
  spec.add_dependency('aws-sdk-wafregional', '~> 1')
  spec.add_dependency('aws-sdk-workdocs', '~> 1')
  spec.add_dependency('aws-sdk-workmail', '~> 1')
  spec.add_dependency('aws-sdk-workspaces', '~> 1')
  spec.add_dependency('aws-sdk-xray', '~> 1')
  # end service gems

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-resources',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-resources/CHANGELOG.md'
  }
end
