/*** local ihub (from outer) ***/ (from docker-compose)

psql -U postgres -h ihub.dev -p 15432 -d ihub -W mysecretpassword

/*** local icms (from outer) ***/
psql -U postgres -h localhost -p 10000 -d ihub -W mysecretpassword