DROP TABLE AM_ALERT_TYPES
/
CREATE TABLE AM_ALERT_TYPES (
    ALERT_TYPE_ID INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    ALERT_TYPE_NAME VARCHAR(256) NOT NULL ,
	STAKE_HOLDER VARCHAR(100) NOT NULL,
    PRIMARY KEY (ALERT_TYPE_ID)
)
/
INSERT INTO AM_ALERT_TYPES (ALERT_TYPE_NAME, STAKE_HOLDER) VALUES ('AbnormalResponseTime', 'publisher')
/
INSERT INTO AM_ALERT_TYPES (ALERT_TYPE_NAME, STAKE_HOLDER) VALUES ('AbnormalBackendTime', 'publisher')
/
INSERT INTO AM_ALERT_TYPES (ALERT_TYPE_NAME, STAKE_HOLDER) VALUES ('AbnormalRequestsPerMin', 'subscriber')
/
INSERT INTO AM_ALERT_TYPES (ALERT_TYPE_NAME, STAKE_HOLDER) VALUES ('AbnormalRequestPattern', 'subscriber')
/
INSERT INTO AM_ALERT_TYPES (ALERT_TYPE_NAME, STAKE_HOLDER) VALUES ('UnusualIPAccess', 'subscriber')
/
INSERT INTO AM_ALERT_TYPES (ALERT_TYPE_NAME, STAKE_HOLDER) VALUES ('FrequentTierLimitHitting', 'subscriber')
/
INSERT INTO AM_ALERT_TYPES (ALERT_TYPE_NAME, STAKE_HOLDER) VALUES ('ApiHealthMonitor', 'publisher')
/
BEGIN
  DECLARE CONTINUE HANDLER FOR SQLSTATE '42704'
  BEGIN END;
  EXECUTE IMMEDIATE 'ALTER TABLE AM_CERTIFICATE_METADATA DROP CONSTRAINT END_POINT_CONSTRAINT';
END
/
