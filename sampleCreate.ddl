create table Commande (NUMERO_COMMAND integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
create table Commande (NUMERO_COMMAND integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
create table Commande (NUMERO_COMMAND integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
create table T_CLIENT (IDENTIFICATION integer not null, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_TYPE_CLIENT_ID varchar(255), primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, TYPE_CLIENT_ID varchar(255) not null, primary key (TYPE_CLIENT_ID)) engine=MyISAM
alter table T_CLIENT add constraint FK5u093197fujk3ln618f5ecmhe foreign key (typeClient_TYPE_CLIENT_ID) references T_TYPE_CLIENT (TYPE_CLIENT_ID)
create table T_CLIENT (IDENTIFICATION integer not null, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_TYPE_CLIENT_ID integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, TYPE_CLIENT_ID integer not null, primary key (TYPE_CLIENT_ID)) engine=MyISAM
alter table T_CLIENT add constraint FK5u093197fujk3ln618f5ecmhe foreign key (typeClient_TYPE_CLIENT_ID) references T_TYPE_CLIENT (TYPE_CLIENT_ID)
create table T_CLIENT (IDENTIFICATION integer not null, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_TYPE_CLIENT_ID integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, TYPE_CLIENT_ID integer not null, primary key (TYPE_CLIENT_ID)) engine=MyISAM
alter table T_CLIENT add constraint FK5u093197fujk3ln618f5ecmhe foreign key (typeClient_TYPE_CLIENT_ID) references T_TYPE_CLIENT (TYPE_CLIENT_ID)
create table T_CLIENT (IDENTIFICATION integer not null, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_TYPE_CLIENT_ID integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, TYPE_CLIENT_ID integer not null, primary key (TYPE_CLIENT_ID)) engine=MyISAM
alter table T_CLIENT add constraint FK5u093197fujk3ln618f5ecmhe foreign key (typeClient_TYPE_CLIENT_ID) references T_TYPE_CLIENT (TYPE_CLIENT_ID)
create table T_CLIENT (IDENTIFICATION integer not null, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, CREATED datetime, USERS_NAME varchar(255), VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION integer not null, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table Commande add constraint FKcmy7dkpaj7trfdm5a3tfshxyq foreign key (IDENTIFICATION) references T_CLIENT (IDENTIFICATION)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, CREATED datetime, USERS_NAME varchar(255), VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION integer not null, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table Commande add constraint FKcmy7dkpaj7trfdm5a3tfshxyq foreign key (IDENTIFICATION) references T_CLIENT (IDENTIFICATION)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, CREATED datetime, USERS_NAME varchar(255), VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION integer not null, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table Commande add constraint FKcmy7dkpaj7trfdm5a3tfshxyq foreign key (IDENTIFICATION) references T_CLIENT (IDENTIFICATION)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table Commande add constraint FKcmy7dkpaj7trfdm5a3tfshxyq foreign key (IDENTIFICATION) references T_CLIENT (IDENTIFICATION)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table Commande add constraint FKcmy7dkpaj7trfdm5a3tfshxyq foreign key (IDENTIFICATION) references T_CLIENT (IDENTIFICATION)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table Commande add constraint FKcmy7dkpaj7trfdm5a3tfshxyq foreign key (IDENTIFICATION) references T_CLIENT (IDENTIFICATION)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table Commande add constraint FKcmy7dkpaj7trfdm5a3tfshxyq foreign key (IDENTIFICATION) references T_CLIENT (IDENTIFICATION_PERSON)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_PERSON integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table Commande add constraint FKkrvl23ld2nx87qug7i7sdmvl6 foreign key (IDENTIFICATION_PERSON) references T_CLIENT (IDENTIFICATION_PERSON)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), typeClient_id integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_TYPE_CLIENT (TYPE_CLIENT varchar(31) not null, id integer not null, primary key (id)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
alter table T_CLIENT add constraint FKfembtipjr3tq1ebpe6sott08t foreign key (typeClient_id) references T_TYPE_CLIENT (id)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table Entreprise (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), ID_TYPE_CLIENT integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table Individu (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), ID_TYPE_CLIENT integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), ID_TYPE_CLIENT integer, primary key (IDENTIFICATION_PERSON)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table Entreprise (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table Individu (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table Entreprise (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table Individu (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (TYPE_CLIENT varchar(31) not null, IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
alter table ADRESS add constraint FK7no8snhvfbng54o3yb9pcg9c5 foreign key (IDENTIFICATION_PERSON) references T_CLIENT (IDENTIFICATION_PERSON)
alter table Commande add constraint FKa1pagh5j5o9s3lyd9ywtj4qh3 foreign key (IDENTIFICATION_CLIENT) references T_CLIENT (IDENTIFICATION_PERSON)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (TYPE_CLIENT varchar(31) not null, IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
alter table ADRESS add constraint FK7no8snhvfbng54o3yb9pcg9c5 foreign key (IDENTIFICATION_PERSON) references T_CLIENT (IDENTIFICATION_PERSON)
alter table Commande add constraint FKa1pagh5j5o9s3lyd9ywtj4qh3 foreign key (IDENTIFICATION_CLIENT) references T_CLIENT (IDENTIFICATION_PERSON)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
create table ADRESS (IDENTIFICATION_PERSON integer not null, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, IDENTIFICATION_FOURNISSEUR integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (TYPE_CLIENT varchar(31) not null, IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_FOURNISSEUR (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
alter table ADRESS add constraint FKia275f860tl6k0yegwl0fxjxw foreign key (IDENTIFICATION_PERSON) references T_FOURNISSEUR (IDENTIFICATION_PERSON)
alter table Commande add constraint FKa1pagh5j5o9s3lyd9ywtj4qh3 foreign key (IDENTIFICATION_CLIENT) references T_CLIENT (IDENTIFICATION_PERSON)
alter table Commande add constraint FKnn7412pb77n0dgi1mke8dkadp foreign key (IDENTIFICATION_FOURNISSEUR) references T_FOURNISSEUR (IDENTIFICATION_PERSON)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
create table ADRESS (IDENTIFICATION_PERSON integer not null, ADRESS_ID integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255)) engine=MyISAM
create table Commande (NUMERO_COMMAND integer not null, VRS integer, ADRESS_ID integer, COMUNE varchar(255), DESCRIPTION_RUE varchar(255), NUMERO_RUE integer, PAYS varchar(255), VILLE varchar(255), CONDITION_COMMAND varchar(255), DATE_COMMAND date, IDENTIFICATION_CLIENT integer, IDENTIFICATION_FOURNISSEUR integer, primary key (NUMERO_COMMAND)) engine=MyISAM
create table LIGNE_COMMANDE (NUMERO_COMMAND integer not null, ARTICLE_ID integer, NUMERO_LIGNE integer, QUANTITY_COMMANDE integer) engine=MyISAM
create table T_ARTICLE (ARTICLE_ID integer not null, VRS integer, DESCRIPTION_ARTICLE varchar(255), PRIX double precision, QUANTITE_STOCKE integer, primary key (ARTICLE_ID)) engine=MyISAM
create table T_CLIENT (TYPE_CLIENT varchar(31) not null, IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
create table T_FOURNISSEUR (IDENTIFICATION_PERSON integer not null, VRS integer, EMAIL varchar(255), FAX varchar(255), NOM varchar(255), TELEPHONE varchar(255), primary key (IDENTIFICATION_PERSON)) engine=MyISAM
alter table ADRESS add constraint FKia275f860tl6k0yegwl0fxjxw foreign key (IDENTIFICATION_PERSON) references T_FOURNISSEUR (IDENTIFICATION_PERSON)
alter table Commande add constraint FKa1pagh5j5o9s3lyd9ywtj4qh3 foreign key (IDENTIFICATION_CLIENT) references T_CLIENT (IDENTIFICATION_PERSON)
alter table Commande add constraint FKnn7412pb77n0dgi1mke8dkadp foreign key (IDENTIFICATION_FOURNISSEUR) references T_FOURNISSEUR (IDENTIFICATION_PERSON)
alter table LIGNE_COMMANDE add constraint FKqbq9u3b52rgvwjla7tip549ku foreign key (ARTICLE_ID) references T_ARTICLE (ARTICLE_ID)
alter table LIGNE_COMMANDE add constraint FKctewlyko8fhkq3cdnmxrrb50w foreign key (NUMERO_COMMAND) references Commande (NUMERO_COMMAND)
