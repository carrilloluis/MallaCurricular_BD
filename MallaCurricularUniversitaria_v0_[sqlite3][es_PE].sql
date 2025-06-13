/*
@description Gestión de las Mallas Curriculares universitarias (Propuesta UNAP 2023)
@author Luis Carrillo Gutiérrez
@date Agosto, 2023
@version 0.0.1
*/

DROP TABLE IF EXISTS [Malla Curricular Universitaria];
CREATE TABLE IF NOT EXISTS [Malla Curricular Universitaria]
(
	[id] CHAR(36) NOT NULL, -- GUID / UUID
	-- identificador interno de cada universidad
	[código interno] VARCHAR(64) NULL,
	--  > 001 pregrado / 002 postgrado
	[nivel académico] CHAR(3) NOT NULL,
	-- Apuntador a una carrera Profesional, maestría, doctorado, etc
	[ente académico] CHAR(36) NOT NULL, -- FK > GUID / UUID
	-- Fecha de inicio de vigencia
	[fecha de inicio] DATE NOT NULL DEFAULT '0000-00-00',
	-- Fecha culminacion de vigencia
	[caducidad] DATE NOT NULL DEFAULT '0000-00-00',
	-- Numero de version de curricula (ordinal)
	[versión] INTEGER UNSIGNED NOT NULL,
	-- Modificación de un plan de estudios, numero de modificación
	[identificador de modificación] INTEGER UNSIGNED NOT NULL DEFAULT 0,
	-- Denominacion de currícula con la fecha, ejemplo: Plan Curricular 2015-2019
	[denominación] TEXT NOT NULL, --  nombre de la curricula (plan curricular)
	[flexible] CHAR(3) NOT NULL DEFAULT '001', -- el plan es rigido, flexible o mixto
	[estado] INTEGER UNSIGNED NOT NULL DEFAULT 7, -- Bits de control
	PRIMARY KEY('id')
) WITHOUT RowId;
