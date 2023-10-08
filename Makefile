# This Makefile is created to simplify running sentinel test commands
# # # #

# deny-public-ip-association
.PHONY: deny-public-ip-association policy
deny-public-ip-association:
	sentinel test policies/deny-public-ip-association/deny-public-ip-association.sentinel

# enforce mandatory tags
.PHONY: enforce-mandatory-tags policy
enforce-mandatory-tags:
	sentinel test policies/enforce-mandatory-tags/enforce-mandatory-tags.sentinel

# enforce volume encryption
.PHONY: enforce-volume-encryption policy
enforce-volume-encryption:
	sentinel test policies/enforce-volume-encryption/enforce-volume-encryption.sentinel

# restrict instance types
.PHONY: restrict-instance-types policy
restrict-instance-types:
	sentinel test policies/restrict-instance-types/restrict-instance-types.sentinel

# restrict volume size
.PHONY: restrict-volume-size
restrict-volume-size:
	sentinel test policies/restrict-volume-size/restrict-volume-size.sentinel

# restrict volume termination in production environment
.PHONY: restrict-volume-termination-in-production
restrict-volume-termination:
	sentinel test policies/restrict-volume-termination-in-production/restrict-volume-termination-in-production.sentinel
