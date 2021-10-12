###This chunk of template can also be put inside outputs.tf for better segregation
output "Public-instance-Public-IP" {
  value = aws_instance.jenkins-master.public_ip
}


#Add LB DNS name to outputs.tf
output "LB-DNS-NAME" {
  value = aws_lb.application-lb.dns_name
}


#Output for ElasticBeanstalk

output "application_arn" {
  value = aws_elastic_beanstalk_application.main.arn
}

output "application_name" {
  value = aws_elastic_beanstalk_application.main.name
}

output "environment_arn" {
  value = aws_elastic_beanstalk_environment.main.arn
}

output "environment_name" {
  value = aws_elastic_beanstalk_environment.main.name
}
