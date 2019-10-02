variable "region" {
  description = "Target AWS Region. This must be pre-initialized from `_terraform_init` run"
}

variable "network_name" {
  description = "Identify the Quorum network from multiple deployments. This must be pre-initialized from `_terraform_init` run"
}

variable "number_of_nodes" {
  description = "Number of Quorum nodes. Default is 7"
  default     = "7"
}

variable "bastion_public_subnet_id" {
  description = "Public Subnet for Bastion node"
}

variable "subnet_ids" {
  type        = "list"
  description = "List of subnet ids used by ECS to create instances. These subnets must be routable to the internet, via Internet Gateway or NAT instance"
}

variable "is_igw_subnets" {
  description = "Indicate that if subnets supplied in subnet_ids are routable to the internet via Internet Gateway"
}

variable "quorum_docker_image" {
  description = "URL to Quorum docker image to be used"
  default     = "quorumengineering/quorum"
}

variable "quorum_docker_image_tag" {
  description = "Quorum Docker image tag to be used"
  default     = "latest"
}

variable "constellation_docker_image" {
  description = "URL to Constellation docker image to be used. Only needed if tx_privacy_engine is constellation"
  default     = "quorumengineering/constellation"
}

variable "constellation_docker_image_tag" {
  description = "Constellation Docker image tag to be used"
  default     = "latest"
}

variable "tessera_docker_image" {
  description = "URL to Constellation docker image to be used. Only needed if tx_privacy_engine is constellation"
  default     = "quorumengineering/tessera"
}

variable "tessera_docker_image_tag" {
  description = "Tessera Docker image tag to be used"
  default     = "latest"
}

variable "aws_cli_docker_image" {
  description = "To interact with AWS services"
  default     = "senseyeio/alpine-aws-cli"
}

variable "aws_cli_docker_image_tag" {
  description = "AWS CLI Docker image tag to be used"
  default     = "latest"
}

variable "consensus_mechanism" {
  description = "Concensus mechanism used in the network. Supported values are raft/istanbul/clique"
  default     = "raft"
}

variable "is_ethereum_network" {
  description = "indicates if the platform used is ethereum or quorum. if it is ethereum then tessera is turned off and clique consensus is used. Supported values are true/false"
  default     = false
}

variable "is_ethereum_v1_9_x" {
  description = "indicates if the go-ethereum version is 1.9. Supported values are true/false. Only used when is_ethereum_network is true"
  default     = true
}

variable "tx_privacy_engine" {
  description = "Engine that implements transaction privacy. Supported values are constellation/tessera"
  default     = "tessera"
}

variable "quorum_bucket" {
  description = "This is to store shared data during the bootstrap. This must be pre-initialized from `_terraform_init` run"
}

variable "quorum_bucket_kms_key_arn" {
  description = "To encrypt/decrypt objects stored in quorum_bucket. This must be pre-initialized from `_terraform_init` run"
}

variable "access_bastion_cidr_blocks" {
  type        = "list"
  description = "CIDR blocks that will be added to allow SSH to Bastion Node"
  default     = []
}
