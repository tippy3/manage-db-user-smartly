CREATE USER 'elan.ceres'@'10.181.0.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b.* TO 'elan.ceres'@'10.181.0.0/255.255.240.0';

CREATE USER 'elan.ceres'@'10.181.16.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b.* TO 'elan.ceres'@'10.181.16.0/255.255.240.0';

CREATE USER 'elan.ceres'@'10.181.32.0/255.255.240.0' IDENTIFIED WITH AWSAuthenticationPlugin AS 'RDS';
GRANT SELECT ON service_b.* TO 'elan.ceres'@'10.181.32.0/255.255.240.0';
