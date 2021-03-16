select vc.claim_id,

vc.billing_id_qualifier      as billing_qualifier,

vc.billing_provider_key       as billing_provider,

vc.referring_provider_key    as referring_provider,

vc.patient_key,

ic.admission_source_key      as admiddin_source,

ic.bill_type_key             as bill_type,

ic.operating_provider_key    as operating_provider,

ic.source_system,

dp.in_oig_list               as oig_list,

dp.npi,

dp.provider_type_name,

dp.provider_type_description as provider_description


from  DIM_VA_CLAIM vc

join dim_institutional_claim ic on vc.claim_key = ic.claim_key

join dim_provider dp on vc.claim_key = ic.claim_key


 where ic.source_system = 'cxm' and npi = '1679576722'



  