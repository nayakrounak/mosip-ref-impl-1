-- -------------------------------------------------------------------------------------------------
-- Database Name: mosip_archive
-- Table Name 	: archive.reg_appointment_consumed
-- Purpose    	: Registration Appointment Consumed: Stores all the appointment requests booked by an individual at a registration center that are consumed  
-- Create By   	: Sadanandegowda
-- Created Date	: Dec-2020
-- 
-- Modified Date        Modified By         Comments / Remarks
-- ------------------------------------------------------------------------------------------
-- 
-- ------------------------------------------------------------------------------------------
-- object: archive.reg_appointment_consumed | type: TABLE --
-- DROP TABLE IF EXISTS archive.reg_appointment_consumed CASCADE;
CREATE TABLE archive.reg_appointment_consumed(
	id character varying(36) NOT NULL,
	regcntr_id character varying(10) NOT NULL,
	prereg_id character varying(36) NOT NULL,
	booking_dtimes timestamp NOT NULL,
	appointment_date date,
	slot_from_time time,
	slot_to_time time,
	lang_code character varying(3) NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	CONSTRAINT pk_rappmntc_id PRIMARY KEY (id),
	CONSTRAINT uk_rappmntc_id UNIQUE (prereg_id)

);
-- ddl-end --
COMMENT ON TABLE archive.reg_appointment_consumed IS 'Registration Appointment Consumed: Stores all the appointment requests booked by an individual at a registration center that are consumed. ';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.id IS 'ID: Unique id generated for the registration appointment booking.';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.regcntr_id IS 'Registration Center ID: Id of the Registration Center where the appointment is taken. Refers to master.registration_center.id';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.prereg_id IS 'Pre-Registration Id: Pre-registration id for which registration appointment is taken.';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.booking_dtimes IS 'Booking Date Time: Date and Time when the appointment booking is done.';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.appointment_date IS 'Appointment Date: Date for which an individual has taken an aopointment for registration at a registration center';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.slot_from_time IS 'Slot From Time: Start time of the appointment slot.';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.slot_to_time IS 'Slot To Time: End time of the appointment slot.';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.lang_code IS 'Language Code : For multilanguage implementation this attribute Refers master.language.code. The value of some of the attributes in current record is stored in this respective language.';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.cr_by IS 'Created By : ID or name of the user who create / insert record.';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.cr_dtimes IS 'Created DateTimestamp : Date and Timestamp when the record is created/inserted';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.upd_by IS 'Updated By : ID or name of the user who update the record with new values';
-- ddl-end --
COMMENT ON COLUMN archive.reg_appointment_consumed.upd_dtimes IS 'Updated DateTimestamp : Date and Timestamp when any of the fields in the record is updated with new values.';
-- ddl-end --

