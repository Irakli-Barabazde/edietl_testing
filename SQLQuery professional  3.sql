select vc.claim_id,

vc.claim_key,

vc.program_key,

vc.patient_account_number   as  patient_account,

vc.status_reason_key        as status_reason,

pc.total_charges,

pc. amount_paid,

pc.balance_due,

pc.source_system


from dim_va_claim vc

join dim_professional_claim pc on vc.claim_key = pc.claim_key


where Vc.source_system = 'cxm'



























