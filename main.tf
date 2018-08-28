provider "aws" {
  #  use aws profile for iam access keys
  region = "${var.region}"
  profile = "${var.terra-profile}"
assume_role {
    role_arn = "${var.role_arn}"
    session_name = "${var.role_session_name}"
  }
}

module "snow-asgroup" {
  source = "./snow-asgroup"
  "AmiId" = "${var.AmiId}"
  "AmiDistro" = "${var.AmiDistro}"
  "AppScriptParams" = "${var.AppScriptParams}"
  "AppScriptShell" = "${var.AppScriptShell}"
  "AppScriptUrl" = "${var.AppScriptUrl}"
  "AppVolumeDevice" = "${var.AppVolumeDevice}"
  "AppVolumeMountPath" = "${var.AppVolumeMountPath}"
  "AppVolumeSize" = "${var.AppVolumeSize}"
  "AppVolumeType" = "${var.AppVolumeType}"
  "CfnBootstrapUtilsUrl" = "${var.CfnBootstrapUtilsUrl}"
  "CfnEndpointUrl" = "${var.CfnEndpointUrl}"
  "CfnGetPipUrl" = "${var.CfnGetPipUrl}"
  "CloudWatchAgentUrl" = "${var.CloudWatchAgentUrl}"
  "CloudWatchLogsAgentUrl" = "${var.CloudWatchLogsAgentUrl}"
  "CloudWatchLogsConfigUri" = "${var.CloudWatchLogsConfigUri}"
  "CloudWatchLogsInstallUri" = "${var.CloudWatchLogsInstallUri}"
  "DesiredCapacity" = "${var.DesiredCapacity}"
  "InstanceRole" = "${var.InstanceRole}"
  "InstanceType" = "${var.InstanceType}"
  "KeyPairName" = "${var.KeyPairName}"
  "LogGroupName" = "${var.LogGroupName}"
  "MaxCapacity" = "${var.MaxCapacity}"
  "MinCapacity" = "${var.MinCapacity}"
  "NoPublicIp" = "${var.NoPublicIp}"
  "NoReboot" = "${var.NoReboot}"
  "NoUpdates" = "${var.NoUpdates}"
  "PypiIndexUrl" = "${var.PypiIndexUrl}"
  "RdsEndpointAddress" = "${var.RdsEndpointAddress}"
  "RdsDbUsername" = "${var.RdsDbUsername}"
  "RdsDbPassword" = "${var.RdsDbPassword}"
  "ScaleDownSchedule" = "${var.ScaleDownSchedule}"
  "ScaleUpSchedule" = "${var.ScaleUpSchedule}"
  "SecurityGroupIds" = "${var.SecurityGroupIds}"
  "ServiceNowInstallScript" = "${var.ServiceNowInstallScript}"
  "ServiceNowInstallTimeout" = "${var.ServiceNowInstallTimeout}"
  "ServiceNowJarZipUri" = "${var.ServiceNowJarZipUri}"
  "SubnetIds" = "${var.SubnetIds}"
  "ToggleCfnInitUpdate" = "${var.ToggleCfnInitUpdate}"
  "ToggleNewInstances" = "${var.ToggleNewInstances}"
  "WatchmakerAdminGroups" = "${var.WatchmakerAdminGroups}"
  "WatchmakerAdminUsers" = "${var.WatchmakerAdminUsers}"
  "WatchmakerConfig" = "${var.WatchmakerConfig}"
  "WatchmakerEnvironment" = "${var.WatchmakerEnvironment}"
  "WatchmakerOuPath" = "${var.WatchmakerOuPath}"
  "stackname" = "${var.stackname}"
  "s3bucket" = "${var.s3bucket}"
  "local-exec-profile" = "${var.local-exec-profile}" 
  }

output "snowasg_ScaleDownScheduledAction" {
value = "${module.snow-asgroup.snowasg_ScaleDownScheduledAction}"
}
output "snowasg_ScaleUpScheduledAction" {
value = "${module.snow-asgroup.snowasg_ScaleUpScheduledAction}"
}
output "snowasg_ServiceNowAutoscalingGroupId" {
value = "${module.snow-asgroup.snowasg_ServiceNowAutoscalingGroupId}"
}
output "snowasg_ServiceNowLaunchConfigId" {
value = "${module.snow-asgroup.snowasg_ServiceNowLaunchConfigId}"
}
output "snowasg_ServiceNowLaunchConfigLogGroupName" {
value = "${module.snow-asgroup.snowasg_ServiceNowLaunchConfigLogGroupName}"
}