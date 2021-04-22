cat >> "$PGDATA/pg_hba.conf" <<EOF

# Set permissions for debezium user
host replication $POSTGRESQL_USER 0.0.0.0/0 trust
EOF

