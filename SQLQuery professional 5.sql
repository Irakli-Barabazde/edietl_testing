select vc.claim_key,

vc.claim_key,

vc.claim_id,

vc.billing_provider_key   as billing_provider,

vc.referring_provider_key as referring_provider,

vc.patient_key,

vc.insured_key,

vc.billing_id_qualifier,

vc.source_system,

vc.etl_batch_id,

vc.billing_provider_taxonomy ,

vc.pay_to_provider_taxonomy ,

vc.referring_provider_taxonomy,

vc.billing_provider_TIN,

pc.rendering_facility_provider_key,

pc.clia_number,

pc.etl_batch_id,

pr.provider_key,

pr.npi      as provider_npi,

pr.provider_name,

pr.provider_type_name,

pr. provider_type_description,

pr.provider_first_name,

pr.provider_last_name,

pr.provider_entity_type,

pr.replacement_npi,

pr.provider_other_org_name,

pr.provider_enumeration_date,

pr.provider_last_update_date,

pr.npi_deactivation_reason_code,

pr.npi_deactivation_date,

pr.npi_reactivation_date,

pr.pit_provider_id,

pr.provider_id_type,

pr.provider_id

from dim_va_claim vc

join dim_professional_claim pc on vc.claim_key = pc.claim_key

join dim_provider pr on vc.claim_key = pr.PROVIDER_KEY

where vc.etl_batch_id ='CXM_8210115161936' 











