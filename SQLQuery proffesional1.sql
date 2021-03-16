select vc.claim_id,

vc.claim_key,

vc.patient_key,

vc. insured_key,

vc.billing_id_qualifier   as billing_qualifier,

pc.total_charges,

pc.source_system,

pc.amount_paid,

pc.balance_due,

dp.npi,

dp.tax_id,

dp.vista_id

from dim_va_claim vc

join dim_professional_claim pc on vc.claim_key = pc.claim_key

join dim_provider dp on vc.start_date = dp.start_date


