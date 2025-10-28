#!/bin/bash
# Load data

# Queries
cat /tmp/bulk_queries/tsdb-last-loc-queries.gz | gunzip | tsbs_run_queries_timescaledb --workers=8 --max-queries=1000 --db-name=tsdb --hosts=localhost --port=5432 --user=tsdb --pass=tsdb  | tee query_tsdb_tsdb-last-loc-queries.out

cat /tmp/bulk_queries/tsdb-avg-load-queries.gz | gunzip | tsbs_run_queries_timescaledb --workers=8 --max-queries=1000 --db-name=tsdb --hosts=localhost --port=5432 --user=tsdb --pass=tsdb  | tee query_tsdb_tsdb-avg-load-queries.out

cat /tmp/bulk_queries/tsdb-high-load-queries.gz | gunzip | tsbs_run_queries_timescaledb --workers=8 --max-queries=1000 --db-name=tsdb --hosts=localhost --port=5432 --user=tsdb --pass=tsdb  | tee query_tsdb_tsdb-high-load-queries.out

cat /tmp/bulk_queries/tsdb--queries.gz | gunzip | tsbs_run_queries_timescaledb --workers=8 --max-queries=1000 --db-name=tsdb --hosts=localhost --port=5432 --user=tsdb --pass=tsdb  | tee query_tsdb_tsdb--queries.out

