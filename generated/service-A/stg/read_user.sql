CREATE USER 'akane.kurokawa'@'172.17.0.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'akane.kurokawa'@'172.17.0.0/255.255.255.0';

CREATE USER 'akane.kurokawa'@'172.17.1.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'akane.kurokawa'@'172.17.1.0/255.255.255.0';

CREATE USER 'akane.kurokawa'@'172.17.2.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'akane.kurokawa'@'172.17.2.0/255.255.255.0';

CREATE USER 'goro.amamiya'@'172.17.0.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'goro.amamiya'@'172.17.0.0/255.255.255.0';

CREATE USER 'goro.amamiya'@'172.17.1.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'goro.amamiya'@'172.17.1.0/255.255.255.0';

CREATE USER 'goro.amamiya'@'172.17.2.0/255.255.255.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_a.* TO 'goro.amamiya'@'172.17.2.0/255.255.255.0';
