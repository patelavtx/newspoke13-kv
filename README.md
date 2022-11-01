# newspoke13-kv + gh vonly

##  Deploys Aviatrix spoke + NAT using ADO Pipeline.

### Used in conjunction with GH repo adotest-13-kvonly-gh to build pipeline

```
https://github.com/patelavtx/newspoke13-kv
```


### terraform.tfvars 

The variables are set during the above pipeline build e.g.
```
# set KV variables
controller-ip = ""
ctrl-password = ""
name          = "d"
cidr          = "10.13.1.0/24"
region       = "West Europe"
account      = ""
transit_gw   = "aztransit184-weu"
attached     = "true"
nat_attached = "true"
ha_gw        = "true"
spoke_cidrs = "10.13.1.0/24"
gw1_snat    = "10.255.13.1"
gw2_snat    = "10.255.13.2"
dnatip      = "10.13.1.52"
dnatip2     = "10.13.1.53"
dstcidr     = "10.255.13.251/32"
dstcidr2    = "10.255.13.252/32"
```