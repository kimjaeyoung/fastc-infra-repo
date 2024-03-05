module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-091c37f9c63dffa81"

  private_subnets = ["subnet-0194995e9cc25a9c0", "subnet-0047206dd0ba7555a"]
  public_subnets  = ["subnet-007057cd347c01667", "subnet-0fbc8199d62e42fa1"]
}