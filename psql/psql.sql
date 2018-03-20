#connect psql and `set search_path to MY_SCHEMANAME`

alias pg-connect="PGOPTIONS=--search_path=MY_SCHEMANAME expect -c 'spawn psql -U MY_USERNAME -h MY_HOSTNAME -p 5432 -d MY_DBNAME; expect Password; send \"MY_PASSWORD\n\" ; interact'"


#describe(list)
\deu+ 
\du
																			# ------------ databases -----------
#list
\l

#create 
create database DB_NAME;

#connect
\c DB_NAME

																			# ------------ admin, users -----------

#create user
psql -c "CREATE USER admin WITH PASSWORD '1';"

#change password
ALTER USER "user_name" WITH PASSWORD 'new_password';

#rename user
ALTER USER myuser RENAME TO newname;


																			# -------------- roles -----------
#set superuser/nosuperuser
ALTER USER myuser WITH SUPERUSER;
ALTER USER myuser WITH NOSUPERUSER

#list 
SELECT rolname, rolsuper FROM pg_roles;
SELECT * FROM pg_user;
SELECT * FROM pg_ ...

#connect 
psql -h host -p port -U foo -W database
Password for user foo: {gthcgtrnbdf}

																			# -------------- schema ------
#list schemas 
\dn

#list tables in all schema
\dt *.*

#in `schemaname` schema
\dt schemaname.*

#pretty format (on/off/auto or blank \x -- switch)
\x 

																			# ----------- TRIGGERS  -----------
\df+ name_of_function

#http://stackoverflow.com/questions/6898453/how-to-display-the-function-procedure-triggers-source-code-in-postgresql
\d event (see trigger name "Triggers: check_event_insert_update_trigger BEFORE INSERT OR UPDATE ON event FOR EACH ROW EXECUTE PROCEDURE check_event_insert_update_new()"
\df+ check_event_insert_update_new

																			# ----------- ALTER TABLE -----------
-- reset autoincrement
ALTER SEQUENCE games_id_seq RESTART WITH 1;

ALTER TABLE egt.log ADD partner_id bigint;

ALTER TABLE custoemr ADD COLUMN fax VARCHAR, ADD COLUMN email VARCHAR;
ALTER TABLE icms.content ADD COLUMN translation text not null default ''::text;

ALTER TABLE distributors ADD PRIMARY KEY (dist_id);
ALTER TABLE egt.log ADD CONSTRAINT egt_transferid_partner_id UNIQUE (type_operation,transferid,partner_id);
ALTER TABLE cms.games2 ADD CONSTRAINT game_description_game_id_fkey FOREIGN KEY (id) REFERENCES cms.games(id);
ALTER TABLE cms.games2 ADD CONSTRAINT game_description_game_id_fkey FOREIGN KEY (id) REFERENCES cms.games(id) ON DELETE CASCADE;
ALTER TABLE egt.games_new ADD FOREIGN KEY (game_id) REFERENCES cms.games(id);
ALTER TABLE egt.log DROP CONSTRAINT egt_transferid_partner_id;

# ---- modify ----
ALTER TABLE distributors ALTER COLUMN street SET NOT NULL;
ALTER TABLE distributors ALTER COLUMN street DROP NOT NULL;
ALTER TABLE egt.log ALTER COLUMN operation_id TYPE varchar(64);



CREATE INDEX indx_cms_games_title ON cms.games (title);
DROP INDEX cms.indx_title;

--?? alter table public.pref_scores drop constraint pref_scores_gid_fkey, add constraint pref_scores_gid_fkey foreign key (gid) references pref_games(gid) on delete cascade;



																			/** ----------- CLONE, DUMPS ----------------- */
create table mytable_clone (like mytable including defaults including constraints including indexes);
-- dump schema
sudo -u postgres pg_dump -hhost_name -p5432 -Uuser_name -W -d db_name --schema=cms > cms.sql
-- fix version error: sudo ln -s /usr/lib/postgresql/9.5/bin/pg_dump /usr/bin/pg_dump --force

-- restore
cat db.sql | psql newDB
-- dump and restore
pg_dump oldDB --schema masters  | psql -h localhost newDB;


-- creating table 
create table netent.games_new (
	id serial, -- autoincrement integer type
	id bigserial, -- autoincrement bigint type
	gameid bigint,
	inner_game_id bigint references cms.games(id) ON UPDATE CASCADE ON DELETE CASCADE,
PRIMARY KEY (id));


#https://wiki.postgresql.org/wiki/Deleting_duplicates
# This query does that for all rows of tablename having the same column1, column2, and column3.
DELETE FROM tablename
WHERE id IN (SELECT id
              FROM (SELECT id,
                             ROW_NUMBER() OVER (partition BY column1, column2, column3 ORDER BY id) AS rnum
                     FROM tablename) t
              WHERE t.rnum > 1);


# search in array-json attributes:
cashdesk_list     | [-61, -11, -5, 9999]
select * from cms_tree where cashdesk_list @> '9999';




