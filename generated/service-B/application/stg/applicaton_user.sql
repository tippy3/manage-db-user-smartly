CREATE USER 'service_b'@'10.182.0.0/255.255.240.0' IDENTIFIED BY 'password';;
GRANT SELECT,INSERT,UPDATE,DELETE ON service_b.* TO 'service_b'@'10.182.0.0/255.255.240.0';

CREATE USER 'service_b'@'10.182.16.0/255.255.240.0' IDENTIFIED BY 'password';;
GRANT SELECT,INSERT,UPDATE,DELETE ON service_b.* TO 'service_b'@'10.182.16.0/255.255.240.0';

CREATE USER 'service_b'@'10.182.32.0/255.255.240.0' IDENTIFIED BY 'password';;
GRANT SELECT,INSERT,UPDATE,DELETE ON service_b.* TO 'service_b'@'10.182.32.0/255.255.240.0';