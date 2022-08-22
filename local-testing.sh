#!/bin/bash
set -e

cd s3-bucket/v1/infrastructure
ln -s ../../local-testing/proton.variables.tf local.proton.variables.tf
ln -s ../../local-testing/proton.auto.tfvars.json local.proton.auto.tfvars.json
