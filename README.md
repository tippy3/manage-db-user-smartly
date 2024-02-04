# 大量のDBユーザーを便利に管理するサンプル

かんたんな設定ファイルから 環境 × ユーザー × HOST の数だけSQL文を自動生成する例です。

## Input

[config/service-A/admin_user.yaml](config/service-A/admin_user.yaml)

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
  - IDENTIFIED BY 'password'; # TODO: generate password automatically
grant:
  - GRANT ALL ON *.*
  - GRANT PROCESS ON *.*
  - GRANT ALL PRIVILEGES ON sys.*
```

## Output

[generated/service-A/prd/admin_user.sql](generated/service-A/prd/admin_user.sql)

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

## Example directory structure

```
.
├── config # input
│   ├── service-A
│   │   ├── admin_user.yaml
│   │   └── read_user.yaml
│   └── service-B
│       ├── application
│       │   └── applicaton_user.yaml
│       └── engineer
│           ├── normal_user.yaml
│           └── super_user.yaml
│
└── generated # output
    ├── service-A
    │   ├── dev
    │   │   ├── admin_user.sql
    │   │   └── read_user.sql
    │   ├── prd
    │   │   ├── admin_user.sql
    │   │   └── read_user.sql
    │   └── stg
    │       ├── admin_user.sql
    │       └── read_user.sql
    └── service-B
        ├── application
        │   ├── dev
        │   │   └── applicaton_user.sql
        │   ├── prd
        │   │   └── applicaton_user.sql
        │   └── stg
        │       └── applicaton_user.sql
        └── engineer
            ├── dev
            │   ├── normal_user.sql
            │   └── super_user.sql
            ├── prd
            │   └── super_user.sql
            └── stg
                ├── normal_user.sql
                └── super_user.sql
```

## How to use

Run all files

```bash
./generate_all.sh
```

Run one file

```bash
./create_sql.sh config/service-A/admin_user.yaml generated/service-A
```

Set IP CIDR in [convert_ip.sh](convert_ip.sh)

## Requirements

- GNU-sed (if macOS)
  - `brew install gsed`
- yq (Python yq)
  - `pip install yq`
  - Be careful not to use Go yq
