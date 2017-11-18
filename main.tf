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
  verify = "zb14237749"
}

module "bluespeedus" {
  source = "./modules/drewdns"
  domain = "bluespeed.us."
  verify = "zb14237749"
}

module "dctsus" {
  source = "./modules/drewdns"
  domain = "dcts.us."
  verify = "zb14237763"
}

module "drewgleme" {
  source = "./modules/drewdns"
  domain = "drewgle.me."
  verify = "zb14237763"
}

module "dctechnicalsolutionsus" {
  source = "./modules/drewdns"
  domain = "dctechnicalsolutions.us."
  verify = "zb14237762"
}
