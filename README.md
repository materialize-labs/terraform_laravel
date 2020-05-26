<a href="https://materializelabs.com">
	<img src="https://d1vqe4bnlv6mwq.cloudfront.net/horizontal-logo.png" alt="Materialize Labs" width="400"/>
</a>

# Terraform IaC for Containerized PHP Applications

## Description

This repository provides [Terraform](https://www.terraform.io/) Infrastructure as Code to quuickly provision architecture for serving PHP applications using:
* Kubernetes
* MySQL
* Redis
* ElasticSearch

## Documentation
Detailed documentation [can be found here](https://docs.google.com/document/d/1mzabSN_vyfr7yeGAB36hTZb_MBChmFD4vjJrGCjWB1o/edit?ts=5ec056b7&pli=1#).

## Providers and Services

##### DigitalOcean
* Kubernetes cluster for application service
* Managed MySQL for database storage
* Managed Redis for application caching and queuing
* Load balancers for incoming traffic

##### AWS
* Managed ElasticSearch for full-text search

## Estimated Costs

##### Production Environments

|           Service 	     | Price / mo. |
| -------------------------- | ----------- |
| DigitalOcean Kubernetes  	 |      $30    |
| DigitalOcean MySQL       	 |      $50    |
| DigitalOcean Redis       	 |      $50    |
| DigitalOcean Load Balancer |      $10    |
| DigitalOcean Load Balancer |      $76    |
|         **TOTAL**          |    **$216** |

##### Testing Environments

|           Service 	     | Price / mo. |
| -------------------------- | ----------- |
| DigitalOcean Kubernetes  	 |      $10    |
| DigitalOcean MySQL       	 |      $15    |
| DigitalOcean Redis       	 |      $15    |
| DigitalOcean Load Balancer |      $10    |
| DigitalOcean Load Balancer |      $34    |
|         **TOTAL**          |    **$84**  |