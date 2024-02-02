# Manage Database Users Smartly

大量のDBユーザーをかしこく管理するサンプルです。この例はMySQLです。

## Input

e.g. [config/service-A/admin_user.yaml](config/service-A/admin_user.yaml)

```yaml
env:
  - prd # 172.16.X.X
  - stg # 172.17.X.X
  - dev # 172.18.X.X
user:
  - ai.hoshino
  - kana.arima
ip_cidr:
  - 172.X.0.0/24 # ap-northeast-1a
  - 172.X.1.0/24 # ap-northeast-1c
  - 172.X.2.0/24 # ap-northeast-1d
identified:
  - IDENTIFIED BY 'password'; #TODO: generate password automatically
grant:
  - GRANT ALL ON *.*
  - GRANT PROCESS ON *.*
  - GRANT ALL PRIVILEGES ON sys.*
```

## Output

e.g. [generated/service-A/prd/admin_user.sql](generated/service-A/prd/admin_user.sql)

```sql
CREATE USER 'ai.hoshino'@'172.16.0.0/255.255.255.0' IDENTIFIED BY 'password';;
GRANT ALL ON *.* TO 'ai.hoshino'@'172.16.0.0/255.255.255.0';
GRANT PROCESS ON *.* TO 'ai.hoshino'@'172.16.0.0/255.255.255.0';
GRANT ALL PRIVILEGES ON sys.* TO 'ai.hoshino'@'172.16.0.0/255.255.255.0';

CREATE USER 'ai.hoshino'@'172.16.1.0/255.255.255.0' IDENTIFIED BY 'password';;
GRANT ALL ON *.* TO 'ai.hoshino'@'172.16.1.0/255.255.255.0';
GRANT PROCESS ON *.* TO 'ai.hoshino'@'172.16.1.0/255.255.255.0';
GRANT ALL PRIVILEGES ON sys.* TO 'ai.hoshino'@'172.16.1.0/255.255.255.0';

CREATE USER 'ai.hoshino'@'172.16.2.0/255.255.255.0' IDENTIFIED BY 'password';;
GRANT ALL ON *.* TO 'ai.hoshino'@'172.16.2.0/255.255.255.0';
GRANT PROCESS ON *.* TO 'ai.hoshino'@'172.16.2.0/255.255.255.0';
GRANT ALL PRIVILEGES ON sys.* TO 'ai.hoshino'@'172.16.2.0/255.255.255.0';

CREATE USER 'kana.arima'@'172.16.0.0/255.255.255.0' IDENTIFIED BY 'password';;
GRANT ALL ON *.* TO 'kana.arima'@'172.16.0.0/255.255.255.0';
GRANT PROCESS ON *.* TO 'kana.arima'@'172.16.0.0/255.255.255.0';
GRANT ALL PRIVILEGES ON sys.* TO 'kana.arima'@'172.16.0.0/255.255.255.0';

CREATE USER 'kana.arima'@'172.16.1.0/255.255.255.0' IDENTIFIED BY 'password';;
GRANT ALL ON *.* TO 'kana.arima'@'172.16.1.0/255.255.255.0';
GRANT PROCESS ON *.* TO 'kana.arima'@'172.16.1.0/255.255.255.0';
GRANT ALL PRIVILEGES ON sys.* TO 'kana.arima'@'172.16.1.0/255.255.255.0';

CREATE USER 'kana.arima'@'172.16.2.0/255.255.255.0' IDENTIFIED BY 'password';;
GRANT ALL ON *.* TO 'kana.arima'@'172.16.2.0/255.255.255.0';
GRANT PROCESS ON *.* TO 'kana.arima'@'172.16.2.0/255.255.255.0';
GRANT ALL PRIVILEGES ON sys.* TO 'kana.arima'@'172.16.2.0/255.255.255.0';
```

## How to use

```bash
./generate_all.sh
```

Set IP CIDR in [convert_ip.sh](convert_ip.sh)

## Requirements

- GNU-Sed (if macOS)
  - `brew install gsed`
- yq (Python yq)
  - `pip install yq`
  - Be careful not to use Go yq
