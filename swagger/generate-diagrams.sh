#!/usr/bin/env bash

# generates all the specified diagrams, and moves them to the resources-and-data-models/images directory
# missing objects are logged
#
# requires the umldiagram tool to be installed:
# git clone git@bitbucket.org:openbankingteam/uml-generator.git
# cd uml-generator/object/cmd/umldiagram
# go install

umldiagram --src=vrp-swagger.yaml --api-version=3 --dir=../resources-and-data-models/images \
	--schema=OBCashAccountDebtorWithName \
	--schema=OBCashAccountCreditor3 \
	--schema=OBBranchAndFinancialInstitutionIdentification6 \
	--schema=OBDomesticVRPInitiation \
	--schema=OBDomesticVRPControlParameters \
	--schema=OBRisk1 \
	--schema=OBDomesticVRPConsentRequest \
	--schema=OBDomesticVRPConsentResponse \
	--schema=OBDomesticVRPInstruction \
	--schema=OBDomesticVRPRequest \
	--schema=OBDomesticVRPResponse \
	--schema=OBDomesticVRPDetails \
	--schema=OBVRPFundsConfirmationRequest \
	--schema=OBVRPFundsConfirmationResponse