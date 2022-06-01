-- -----------------------------
-- create HFRI (ELIDEK) database
-- -----------------------------
create database HFRI;
use HFRI;

-- org(organization_id, abbreviation, name, street, street_number, postal_code, city, last_update)
create table org (
	organization_id int unsigned not null auto_increment,
	abbreviation varchar(10),
	name varchar(60) not null,
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
  constraint fk_university_id foreign key (organization_id) references org (organization_id) on delete restrict on update cascade
);

-- research_center(organization_id, budget_from_minedu, budget_from_private_acts, last_update)
create table research_center (
	organization_id int unsigned not null,
	budget_from_minedu int unsigned not null,
	budget_from_private_acts int unsigned,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (organization_id),
  constraint fk_research_center_id foreign key (organization_id) references org (organization_id) on delete restrict on update cascade
);

-- company(organizattion_id, equity, last_update)
create table company (
	organization_id int unsigned not null,
	equity int unsigned,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (organization_id),
  constraint fk_company_id foreign key (organization_id) references org (organization_id) on delete restrict on update cascade
);

-- phone_number(organization_id, p_number, last_update)
create table phone_number (
	organization_id int unsigned not null,
	p_number varchar(20) not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (p_number),
  constraint fk_phone_organization_id foreign key (organization_id) references org (organization_id) on delete restrict on update cascade
);

-- scientific_field(name, last_update)
create table scientific_field (
	name varchar(50) not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (name)
);

-- researcher(reasearcher_id, first_name, last_name, sex, date_of_birth, start_date, organization_id, last_update)
create table researcher (
	researcher_id int unsigned not null auto_increment,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(50),
	date_of_birth datetime not null,
	start_date datetime not null,
  organization_id int unsigned not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (researcher_id),
  constraint fk_researcher_organization_id foreign key (organization_id) references org (organization_id) on delete restrict on update cascade
);

-- executive(executive_id, name, last_update)
create table executive (
	executive_id int unsigned not null auto_increment,
	name varchar(50) not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (executive_id)
);

-- program(program_id, name, department)
create table program (
	program_id int unsigned not null auto_increment,
	name varchar(50) not null,
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
  constraint fk_program_id foreign key (program_id) references program (program_id) on delete restrict on update cascade,
  constraint fk_evaluator_id foreign key (evaluator_id) references researcher (researcher_id) on delete restrict on update cascade,
  constraint fk_supervisor_id foreign key (supervisor_id) references researcher (researcher_id) on delete restrict on update cascade,
  constraint fk_executive_id foreign key (executive_id) references executive (executive_id) on delete restrict on update cascade,
  constraint fk_organization_id foreign key (organization_id) references org (organization_id) on delete restrict on update cascade,
  constraint check_dates check(start_date<end_date and evaluation_date<start_date),
	constraint min_max_duration check(timestampdiff(year, start_date, end_date)>=1 and timestampdiff(year, start_date, end_date)<=4)
);

-- focuses_on(project_id, name, last_update)
create table focuses_on (
  project_id int unsigned not null,
  name varchar(50) not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (project_id, name),
  constraint fk_projectf_id foreign key (project_id) references project (project_id) on delete restrict on update cascade,
  constraint fk_name foreign key (name) references scientific_field (name) on delete restrict on update cascade
);

-- deliverable(title, summary, project_id, last_update)
create table deliverable (
	title varchar(50) not null,
	summary varchar(1023) not null,
	due_date datetime not null,
	project_id int unsigned not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (title, project_id),
	constraint fk_deliverable_project_id foreign key (project_id) references project (project_id) on delete restrict on update cascade
);

-- works_on(project_id, researcher_id, last_update)
create table works_on (
  project_id int unsigned not null,
  researcher_id int unsigned not null,
  last_update timestamp not null default current_timestamp on update current_timestamp,
  primary key (project_id, researcher_id),
  constraint fk_projectw_id foreign key (project_id) references project (project_id) on delete restrict on update cascade,
  constraint fk_researcher_id foreign key (researcher_id) references researcher (researcher_id) on delete restrict on update cascade
);