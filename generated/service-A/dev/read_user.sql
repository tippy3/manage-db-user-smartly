CREATE USER 'akane.kurokawa'@'173.18.0.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'akane.kurokawa'@'173.18.0.0/255.255.255.0';

CREATE USER 'akane.kurokawa'@'173.18.1.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'akane.kurokawa'@'173.18.1.0/255.255.255.0';

CREATE USER 'akane.kurokawa'@'173.18.2.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'akane.kurokawa'@'173.18.2.0/255.255.255.0';

CREATE USER 'goro.amamiya'@'173.18.0.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'goro.amamiya'@'173.18.0.0/255.255.255.0';

CREATE USER 'goro.amamiya'@'173.18.1.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'goro.amamiya'@'173.18.1.0/255.255.255.0';

CREATE USER 'goro.amamiya'@'173.18.2.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'goro.amamiya'@'173.18.2.0/255.255.255.0';
