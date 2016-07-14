#describe(list)
\deu+ 
\du

																			# ------------ admin -----------

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

																			# ----------- ALTER TABLE -----------
ALTER TABLE egt.log ADD partner_id bigint;
ALTER TABLE distributors ADD PRIMARY KEY (dist_id);
ALTER TABLE egt.log ADD CONSTRAINT egt_transferid_partner_id UNIQUE (type_operation,transferid,partner_id);
ALTER TABLE cms.games2 ADD CONSTRAINT game_description_game_id_fkey FOREIGN KEY (id) REFERENCES cms.games(id);
ALTER TABLE cms.games2 ADD CONSTRAINT game_description_game_id_fkey FOREIGN KEY (id) REFERENCES cms.games(id) ON DELETE CASCADE;
ALTER TABLE egt.games_new ADD FOREIGN KEY (game_id) REFERENCES cms.games(id);
ALTER TABLE egt.log DROP CONSTRAINT egt_transferid_partner_id;

alter table public.pref_scores drop constraint pref_scores_gid_fkey, add constraint pref_scores_gid_fkey foreign key (gid) references pref_games(gid) on delete cascade;


																			# ----------- clone -----------------
create table mytable_clone (like mytable including defaults including constraints including indexes);

