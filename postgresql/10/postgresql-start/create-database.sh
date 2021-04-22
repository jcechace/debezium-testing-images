
SQL=${APP_DATA}/src/postgresql-start/inventory.sql

echo $PG_INITIALIZED

if $PG_INITIALIZED ; then
    psql -U $PGUSER -c "ALTER ROLE ${POSTGRESQL_USER} WITH REPLICATION"
    psql -U $PGUSER -c "ALTER USER ${POSTGRESQL_USER} WITH SUPERUSER"
    psql -U ${POSTGRESQL_USER} -d ${POSTGRESQL_DATABASE} -a -f $SQL
fi

