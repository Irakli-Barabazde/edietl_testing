select vc.claim_id,

bprov.npi                   as billing_npi,

vc.billing_id_qualifier      as billing_qualifier,

vc.billing_provider_taxonomy,

vc.status_reason_key         as status_reason,

vc. patient_key,

vc. insured_key,

refprov.npi                 as referring_npi,

serv_fac.npi                as service_facility_npi,

att_prov.npi                as attending_npi,

ic.attending_provider_taxonomy,

rend_prov.npi               as rendering_npi,

operating_prov.npi          as operating_npi,

other_prov.npi              as other_operating_npi,

ic.other_provider_qualifier as other_operating_qualifier,

ic.Total_Charges,

ic.statement_from_date

from dim_va_claim vc

join dim_institutional_claim ic on vc.claim_key = ic.claim_key


join dim_provider bprov on bprov.provider_key = vc.billing_provider_key

left join dim_provider serv_fac on serv_fac.provider_key = vc.service_facility_key 

left join dim_provider rend_prov on rend_prov.provider_key = ic.rendering_provider_key

left join dim_provider refprov on refprov.provider_key = vc.referring_provider_key

left join dim_provider att_prov on att_prov.provider_key = ic.attending_provider_key

left join dim_provider other_prov on other_prov.provider_key = ic.other_provider_key

left join dim_provider operating_prov on operating_prov.provider_key = ic.operating_provider_key

where vc.source_system = 'CXM' 









