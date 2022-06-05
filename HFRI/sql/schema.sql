-- -----------------------------
-- create HFRI (ELIDEK) database
-- -----------------------------
create database HFRI;
use HFRI;

-- org(organization_id, abbreviation, organization_name, street, street_number, postal_code, city, last_update)
create table org (
	organization_id int unsigned not null auto_increment,
	abbreviation varchar(10),
	organization_name varchar(255) not null,
	street varchar(50) not null,
	street_number varchar(50) not null,
	postal_code varchar(50) not null,
	city varchar(50) not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (organization_id)
);

-- university(organization_id, budget_from_minedu, budget_from_private_acts, last_update)
create table university (
	organization_id int unsigned not null,
	budget_from_minedu int unsigned not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (organization_id),
  constraint fk_university_id foreign key (organization_id) references org (organization_id) on delete cascade on update cascade
);

-- research_center(organization_id, budget_from_minedu, budget_from_private_acts, last_update)
create table research_center (
	organization_id int unsigned not null,
	budget_from_minedu int unsigned not null,
	budget_from_private_acts int unsigned,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (organization_id),
  constraint fk_research_center_id foreign key (organization_id) references org (organization_id) on delete cascade on update cascade
);

-- company(organization_id, equity, last_update)
create table company (
	organization_id int unsigned not null,
	equity int unsigned,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (organization_id),
  constraint fk_company_id foreign key (organization_id) references org (organization_id) on delete cascade on update cascade
);

-- phone_number(organization_id, p_number, last_update)
create table phone_number (
	organization_id int unsigned not null,
	p_number int unsigned not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (p_number),
  constraint fk_phone_organization_id foreign key (organization_id) references org (organization_id) on delete cascade on update cascade
);

-- scientific_field(scientific_field_name, last_update)
create table scientific_field (
	scientific_field_name varchar(50) not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (scientific_field_name)
);

-- researcher(reasearcher_id, first_name, last_name, sex, date_of_birth, start_date, organization_id, last_update)
create table researcher (
	researcher_id int unsigned not null auto_increment,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(50),
	date_of_birth datetime not null,
	start_date datetime not null,
  organization_id int unsigned,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (researcher_id),
  constraint fk_researcher_organization_id foreign key (organization_id) references org (organization_id) on delete cascade on update cascade
);

-- executive(executive_id, executive_name, last_update)
create table executive (
	executive_id int unsigned not null auto_increment,
	executive_name varchar(50) not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (executive_id)
);

-- program(program_id, program_name, department)
create table program (
	program_id int unsigned not null auto_increment,
	program_name varchar(50) not null,
	department varchar(50) not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (program_id)
);

-- project(project_id, title, summary, funds, start_date, end_date, grade, evaluation_date, program_id, evaluator_id, supervisor_id, executive_id, organizatiton_id, last_update)
create table project (
	project_id int unsigned not null auto_increment,
	title varchar(50) not null,
	summary varchar(1023) not null,
	funds int unsigned not null check(funds>=100000 and funds<=1000000),
	start_date datetime not null,
	end_date datetime not null,
	grade smallint unsigned not null check(grade>60 and grade<=100),
	evaluation_date datetime not null,
  program_id int unsigned not null,
  evaluator_id int unsigned not null,
  supervisor_id int unsigned not null,
  executive_id int unsigned not null,
  organization_id int unsigned not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (project_id),
  constraint fk_program_id foreign key (program_id) references program (program_id) on delete cascade on update cascade,
  constraint fk_evaluator_id foreign key (evaluator_id) references researcher (researcher_id) on delete cascade on update cascade,
  constraint fk_supervisor_id foreign key (supervisor_id) references researcher (researcher_id) on delete cascade on update cascade,
  constraint fk_executive_id foreign key (executive_id) references executive (executive_id) on delete cascade on update cascade,
  constraint fk_organization_id foreign key (organization_id) references org (organization_id) on delete cascade on update cascade,
  constraint check_dates check(start_date<end_date and evaluation_date<start_date),
	constraint min_max_duration check(timestampdiff(year, start_date, end_date)>=1 and timestampdiff(year, start_date, end_date)<=4)
);

-- focuses_on(project_id, scientific_field_name, last_update)
create table focuses_on (
  project_id int unsigned not null,
  scientific_field_name varchar(50) not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (project_id, scientific_field_name),
  constraint fk_projectf_id foreign key (project_id) references project (project_id) on delete cascade on update cascade,
  constraint fk_scientific_field_name foreign key (scientific_field_name) references scientific_field (scientific_field_name) on delete cascade on update cascade
);

-- deliverable(title, summary, project_id, last_update)
create table deliverable (
	title varchar(50) not null,
	summary varchar(1023) not null,
	due_date datetime not null,
	project_id int unsigned not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (title, project_id),
	constraint fk_deliverable_project_id foreign key (project_id) references project (project_id) on delete cascade on update cascade
);

-- works_on(project_id, researcher_id, last_update)
create table works_on (
  project_id int unsigned not null,
  researcher_id int unsigned not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (project_id, researcher_id),
  constraint fk_projectw_id foreign key (project_id) references project (project_id) on delete cascade on update cascade,
  constraint fk_researcher_id foreign key (researcher_id) references researcher (researcher_id) on delete cascade on update cascade
);

-- views

-- number of projects per researcher
CREATE VIEW pr_re AS
(SELECT r.last_name last_name, r.first_name first_name, count(p.title) num_of_proj from project p
INNER JOIN works_on wo
ON (p.project_id = wo.project_id)
INNER JOIN researcher r
ON (r.researcher_id = wo.researcher_id)
GROUP BY r.researcher_id
);

-- number of phone numbers per organization
CREATE VIEW p_per_org AS
(SELECT  o.organization_name organization_name, count(*) num_of_phones from phone_number pn
INNER JOIN org o
ON (pn.organization_id = o.organization_id)
GROUP BY o.organization_name);

-- indexes

CREATE UNIQUE INDEX idx_phone_numbers ON phone_number (organization_id, p_number);

CREATE UNIQUE INDEX idx_researcher_name ON researcher (first_name, last_name);

CREATE UNIQUE INDEX idx_organization_name ON org (organization_name);

CREATE UNIQUE INDEX idx_project_title ON project (title);

CREATE UNIQUE INDEX idx_scientific_field_name ON scientific_field (scientific_field_name);

-- triggers

delimiter $$
create trigger delete_corg
after delete on company
for each row
begin
	delete from org where org.organization_id = old.organization_id;
end $$

create trigger delete_rcorg
after delete on research_center
for each row
begin
	delete from org where org.organization_id = old.organization_id;
end $$

create trigger delete_uorg
after delete on university
for each row
begin
	delete from org where org.organization_id = old.organization_id;
end $$

delimiter ;
