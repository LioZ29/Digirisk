-- Copyright (C) 2021-2023 EVARISK <technique@evarisk.com>
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see https://www.gnu.org/licenses/.

CREATE TABLE llx_digiriskdolibarr_accident(
	rowid             integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	ref               varchar(128) NOT NULL,
	ref_ext           varchar(128),
	entity            integer DEFAULT 1 NOT NULL,
	date_creation     datetime NOT NULL,
	tms               timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	status            smallint,
	label             varchar(255) NOT NULL,
  accident_date     datetime NOT NULL,
	description       text,
	photo             text,
	accident_type     text,
  external_accident smallint DEFAULT 1,
  accident_location text,
  fk_project        integer,
  fk_ticket         integer,
	fk_user_creat     integer NOT NULL,
	fk_user_modif     integer,
  fk_element        integer,
  fk_standard       integer,
  fk_soc            integer,
	fk_user_employer  integer
) ENGINE=innodb;
