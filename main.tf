provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "bluespeed-terraform"
    key    = "terraformDns"
    region = "us-east-1"
  }
}

module "bluespeedinfo" {
  source = "./modules/drewdns"
  domain = "bluespeed.info."
  dkim = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCB2WtfhMq05g+fqRfvGHzXaqvHif1bjCbUlF6QugP/pto0TVh69paYfxcTbhBgP1E99LxwAVMAuc0ZrnTTToNcYDRVzApyG/zeHKaYQpgCY/4ApRPHProwCPTpKclP9YEepBcYTFdd6uoUJlSZQMt0OyHdVnCePpXcym5CcI1JDwIDAQAB"
}

module "bluespeedus" {
  source = "./modules/drewdns"
  domain = "bluespeed.us."
}

module "dctsus" {
  source = "./modules/drewdns"
  domain = "dcts.us."
}

module "drewgleme" {
  source = "./modules/drewdns"
  domain = "drewgle.me."
  dkim = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC7g9O8nF8rrIGl2+8WM2MTv6BGnsdS0FhrfaTSDUP77BPAQ/dNIxvTcR40xAr3rMMpMQ8aDzYo+dvZfSfeajVXQLBLy906bzEbm5QgM/Ph6wdlXWW++RLErSeqx7giDcgDb9e4dsU0hlhACKgE8spwlxxQq4g/NPkfVfekypG7HwIDAQAB"
}

module "dctechnicalsolutionsus" {
  source = "./modules/drewdns"
  domain = "dctechnicalsolutions.us."
}

module "drewcarpenterus" {
  source = "./modules/drewdns"
  domain = "drewcarpenter.us."
  dkim = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDK8HaxaOrlBK2NaKF7emrOgakYoW7wrcjOEcw7j3MkSSzN2qNxzci71Gb8D18LRUoef1xIiiXBC0UBagxxlSOSeI8xoLTo6Xb1Nh4oxyIXpNvAOl/IDZ/x6QBvifYs7Ijl8LVP9uJphQaGCaMpQxdhC4c9UFZBrt5MmIj5/TmweQIDAQAB"
}
