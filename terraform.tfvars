# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

# Adjust to your own cluster and nodegroup name
cluster_name               = "terraform-karpenter-demo"

karpenter_target_nodegroup = "terraform-karpenter-demo-node-group"

karpenter_namespace = "kube-system"

karpenter_version   = "0.16.3"

# The variables below are used for the default Karpenter Provisioner that is deployed in this script
karpenter_ec2_instance_types = ["c","t",]

karpenter_vpc_az = [
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c",
]
karpenter_ec2_arch                  = ["amd64"]
karpenter_ec2_capacity_type         = ["spot", "on-demand"]
karpenter_ttl_seconds_after_empty   = 300
karpenter_ttl_seconds_until_expired = 604800            