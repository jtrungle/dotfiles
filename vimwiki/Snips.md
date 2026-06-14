# add portforward

```sh
/ip firewall nat
add chain=dstnat \
    comment="rfp2868" \
    in-interface-list=wan-both \
    protocol=tcp \
    dst-port=2868 \
    action=dst-nat \
    to-addresses=10.90.1.170 \
    to-ports=22
``` 

# delete duplicates
```sql
 WITH cte AS (
         SELECT
             id,
             ROW_NUMBER() OVER (
                 PARTITION BY scenario_id, emitter_carrier_ref_id, profile_id, transmittable_profile_id
                 ORDER BY id
             ) AS rn
         FROM scs_app.emitters
     )
 DELETE FROM scs_app.emitters
 WHERE id IN (SELECT id FROM cte WHERE rn > 1);  
```

