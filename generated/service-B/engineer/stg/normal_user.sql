CREATE USER 'suletta.mercury'@'10.182.0.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b_view.* TO 'suletta.mercury'@'10.182.0.0/255.255.240.0';

CREATE USER 'suletta.mercury'@'10.182.16.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b_view.* TO 'suletta.mercury'@'10.182.16.0/255.255.240.0';

CREATE USER 'suletta.mercury'@'10.182.32.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b_view.* TO 'suletta.mercury'@'10.182.32.0/255.255.240.0';

CREATE USER 'miorine.rembran'@'10.182.0.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b_view.* TO 'miorine.rembran'@'10.182.0.0/255.255.240.0';

CREATE USER 'miorine.rembran'@'10.182.16.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b_view.* TO 'miorine.rembran'@'10.182.16.0/255.255.240.0';

CREATE USER 'miorine.rembran'@'10.182.32.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b_view.* TO 'miorine.rembran'@'10.182.32.0/255.255.240.0';

CREATE USER 'guel.jeturk'@'10.182.0.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b_view.* TO 'guel.jeturk'@'10.182.0.0/255.255.240.0';

CREATE USER 'guel.jeturk'@'10.182.16.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b_view.* TO 'guel.jeturk'@'10.182.16.0/255.255.240.0';

CREATE USER 'guel.jeturk'@'10.182.32.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b_view.* TO 'guel.jeturk'@'10.182.32.0/255.255.240.0';
