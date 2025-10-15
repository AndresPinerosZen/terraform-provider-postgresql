kubens atlantis

# Copy binaries and set execute permissions
kubectl cp terraform-provider-postgresql-custom_linux_amd64 atlantis-0:/home/atlantis/.terraform.d/plugins/custom.local/cyrilgdn/postgresql/1.26.0/linux_amd64/terraform-provider-postgresql_v1.26.0
kubectl exec atlantis-0 -- chmod +x /home/atlantis/.terraform.d/plugins/custom.local/cyrilgdn/postgresql/1.26.0/linux_amd64/terraform-provider-postgresql_v1.26.0

kubectl cp terraform-provider-postgresql-custom_linux_arm64 atlantis-0:/home/atlantis/.terraform.d/plugins/custom.local/cyrilgdn/postgresql/1.26.0/linux_arm64/terraform-provider-postgresql_v1.26.0
kubectl exec atlantis-0 -- chmod +x /home/atlantis/.terraform.d/plugins/custom.local/cyrilgdn/postgresql/1.26.0/linux_arm64/terraform-provider-postgresql_v1.26.0

# Set proper ownership
kubectl exec atlantis-0 -- chown atlantis:atlantis /home/atlantis/.terraform.d/plugins/custom.local/cyrilgdn/postgresql/1.26.0/linux_amd64/terraform-provider-postgresql_v1.26.0
kubectl exec atlantis-0 -- chown atlantis:atlantis /home/atlantis/.terraform.d/plugins/custom.local/cyrilgdn/postgresql/1.26.0/linux_arm64/terraform-provider-postgresql_v1.26.0