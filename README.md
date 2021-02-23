# OBIE Variable Recurring Payments (VRP) API Standards

The OBIE VRP API specification describes a collection of RESTful APIs that enable TPPs to setup an ongoing VRP Consent with PSU, and then initiate payments within the control parameters of the consent. These payments can be initiated without the PSU being present.

## Profiles

[VRP Consent API](./profiles/vrp-profile.md)

## Resources and Data Models

[VRP Consents](./resources-and-data-models/domestic-vrp-consents.md)

[Domestic VRP](./resources-and-data-models/domestic-vrp.md)

## Change Log

### Version 3.1.8-RC1

1. Updated version numbers to line up with OBIE R/W API versions
2. Added `RemittanceInformation` fields and clarified how these are to be populated
3. Added a clarification on how the `Reference` field for CoF requests should be populated.
4. Clarified the reasons why `CreditorAccount` is optional and situations in which the optionality may be supported.
5. Provided examples of `PeriodicAlignment` to clarify its meaning
6. Clarified that when `PeriodAlignment` is `Consent`, the first period's limits will be pro-rated
7. Added clarification that re-auth is only needed in rare circumstances and should not be based on a 90 day period.

### Version 1.0.1-draft2

1. Changed all the scopes to `payments`
2. Removed references to `PATCH` operation.
3. Introduced the `ReadRefundAccount` field in the consent to indicate that `Refund` information should be included in the response.
4. Removed the `DebtorAccount` from Confirmation of Funds responses.
5. Removed the ability to indicate `AvailableWithOverdraft` in Confirmation of Funds responses.
6. Added details on `PSUAuthentictionMethod` to indicate permitted PSU authentication methods for a consent
7. Clarified the situations in which a re-authentication would be required.
8. Removed requirements around multi-auth and clarified that in the current version only single auth accounts will be supported.
9. Clarified plurality of VRPs is possible
10. Added support for `SupplementaryData` fields
11. Added support for `RemittanceInformation` fields
12. Added fields for `PeriodicLimits`
13. Added specific status code for failure of VRP payment to adhere to control parameters
14. Added support for `PSUAuthenticationMethod` fields
