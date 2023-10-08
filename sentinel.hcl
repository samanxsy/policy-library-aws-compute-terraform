# Policy Sets
# 
# Author: Saman Saybani

policy "deny-public-ip-association" {
    source = "./policies/deny-public-ip-association/deny-public-ip-association.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "enforce-tags" {
    source = "./policies/enforce-tags/enforce-tags.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "enforce-volume-encryption" {
    source = "./policies/enforce-volume-encryption/enforce-volume-encryption.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-instance-volume-termination" {
    source = "./policies/restrict-volume-termination-in-production/restrict-volume-termination-in-production.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-instance-types" {
    source = "./policies/restrict-instance-types/restrict-instance-types.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-volume-size" {
    source = "./policies/restrict-volume-size/restrict-volume-size.sentinel"
    enforcement_level = "hard-mandatory"
}
