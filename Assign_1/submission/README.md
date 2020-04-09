## EE17B114 Cloud Computing

We have to set up the instance at the aws, later we need to use the autoscaling feature to measure the performance of aws.

## Creating the instance:

To set up the instance,

- Create a Linux Image. I used Ubuntu 18.04 - Free tier(micro)

- install nodejs, NPM and forever(used for the automatic running of server on autoscaling)

- Add `server.js` file to the instance using filezilla. Save the image as AMI

- In AMI, make sure to add the content of `create_server.sh` to the text field.

- Create the appropriate load balancer.

- I used the this link as referance for creating the instances and auto scaling - https://www.youtube.com/watch?v=aOAqH48Cyc8&feature=youtu.be
