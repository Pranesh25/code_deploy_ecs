Task :- to run python app on ecs cluster using blue green deployement.


STEP :-1 (CREATE IAM ROLES)

        role policy :- AmazonEC2ContainerServiceforEC2Role  :- for ec2 to work as ecs agent   :- ec2
        role policy :- AmazonECSTaskExecutionRolePolicy     :- for ecs to call other services on behalf :-ecs
        role policy :- AWSCodeDeployRoleForECS              :- for code deploy to ecs  :- code deploy
        role policy :- AmazonEC2ContainerRegistryFullAccess :-  attach to code build to be able to make changes in ecr :- code build
        roel policy :- AWSLambdaBasicExecutionRole          :- attach to code deploy :- lambda-cli-hook-role.
        
STEP :-2 (CREATE AUTO SCALING GROUP WITH ECS AGENT INSTALLED)

STEP :-3  (CREATE ALB AND TARGET GROUP)

STEP :-4  (CRETED ECR)

STEP :-5 (LAUNCH AN AMI LINUX 2 ) PUSHED IMAGE TO ECR

STEP :-6  (CREATED TASKDEF) :- WITH TASK NAME CONTAINER NAME MEMORY AND PORTS , ENVIRONMENT AND EXECUTION ROLE

STEP :-7 (CREATED BUILDSPEC FILE ) ATTACHED IAM ROLE "AmazonEC2ContainerRegistryFullAccess" TO MAKE CODE BUILD ABLE TO PUSH TO ECR FOR NEW IMAGES

STEP :-8 (CREATED IMAGE_DETAIL.JSON) A FILE WITH NAME OF IMAGE AND ITS URI FROM ECR FOR UPDATION 

STEP :-9 (CREATED APPSPEC.YML)


https://github.com/aws-samples/aws-codedeploy-appspec-assistant/blob/master/ecs-default-appspec-template-advanced.json
