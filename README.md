Run instructions for postgres:
1. Build postgres poc image
   docker build postgres -t adorogen86/poc-pgdb

2. Create network so that you can connect a container that runs psql to a container that runs postgres server
   docker network create --driver bridge db-network

3. Run postgres server
   docker container run --rm --network db-network --name poc-pgdb -d adorogen86/poc-pgdb

4. Run psql client and connect to postgres server
   docker container run -it --rm --network db-network postgres psql -h poc-pgdb -U postgres

Cleanup:
1. Stop postgres server (will remove container automatically)
   docker container stop poc-pgdb

2. Remove network
   docker network remove db-network


Challenges:
   C1. SQL to return member id (mid) and latest spoken language preference for members that have spoken language preferences 
   C2. remove duplicate records (sqlite and others)
   ```
   DELETE FROM sms WHERE rowid NOT IN (SELECT min(rowid) FROM sms GROUP BY address, body)
   ```
