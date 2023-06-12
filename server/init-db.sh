#!/bin/env bash

set -euo pipefail

# Check if database is already initialized
already_initialized=$(sqlite3 "${DBSOURCE}" "select count(1) from sqlite_master where type='table' and (name='exchangerate' or name='currencycode')")
if [[ "$already_initialized" -eq 1 ]]; then
  echo "${DBSOURCE} already initialized"
  exit 1
fi

# Create currencycode table
sqlite3 "${DBSOURCE}" 'create table currencycode (id integer primary key autoincrement, code text not null)'
sqlite3 "${DBSOURCE}" 'create unique index ix_currencycode_code on currencycode(code)'

# Add all currencies
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('AED')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('ALL')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('AMD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('AOA')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('ARS')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('AUD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('AZN')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('BAM')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('BBD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('BGN')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('BHD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('BMD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('BOB')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('BRL')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('BWP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('BYN')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('CAD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('CDF')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('CHF')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('CLP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('CNY')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('COP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('CRC')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('CVE')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('CZK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('DKK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('DOP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('DZD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('EGP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('EUR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('FJD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('GBP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('GEL')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('GHS')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('GIP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('GTQ')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('GYD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('HKD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('HNL')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('HRK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('HUF')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('IDR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('ILS')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('IMP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('INR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('IQD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('ISK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('JMD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('JOD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('JPY')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('KES')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('KGS')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('KHR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('KRW')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('KWD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('KYD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('KZT')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('LAK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('LBP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('LKR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('LYD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MAD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MDL')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MGA')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MKD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MMK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MNT')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MOP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MRU')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MUR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MVR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MWK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MXN')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MYR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('MZN')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('NAD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('NGN')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('NIO')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('NOK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('NZD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('OMR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('PAB')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('PEN')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('PGK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('PHP')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('PKR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('PLN')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('PYG')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('QAR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('RON')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('RSD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('RUB')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('RWF')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('SAR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('SEK')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('SGD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('SZL')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('THB')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('TJS')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('TMT')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('TND')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('TRY')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('TTD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('TWD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('TZS')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('UAH')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('UGX')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('USD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('UYU')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('UZS')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('VEF')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('VND')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('XAF')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('XCD')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('XOF')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('ZAR')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('ZMW')"
sqlite3 "${DBSOURCE}" "insert into currencycode (code) values ('ZWD')"

# Create exchangerate table
sqlite3 "${DBSOURCE}" 'create table exchangerate (id integer primary key autoincrement, base text not null, target text not null, rate real not null, foreign key (base) references currencycode (code), foreign key (target) references currencycode (code))'
sqlite3 "${DBSOURCE}" 'create unique index ix_exchangerate_base_target on exchangerate(base,target)'

# Add some initial data
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('USD', 'EUR', 0.941924)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('USD', 'CAD', 1.257542)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('EUR', 'GBP', 0.858246)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('EUR', 'CHF', 1.031546)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('JPY', 'CHF', 0.011758)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('JPY', 'CNY', 0.050958)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('GBP', 'AUD', 1.732877)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('GBP', 'USD', 1.248721)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('AUD', 'HKD', 5.652008)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('AUD', 'CAD', 0.906741)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('CAD', 'EUR', 0.740983)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('CAD', 'AUD', 1.102851)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('CHF', 'USD', 1.040185)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('CHF', 'CNY', 6.920268)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('CNY', 'JPY', 135.931023)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('CNY', 'EUR', 0.230739)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('HKD', 'GBP', 0.102101)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('HKD', 'AUD', 0.176928)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('NZD', 'GBP', 0.521302)"
sqlite3 "${DBSOURCE}" "insert into exchangerate (base, target, rate) values ('NZD', 'CHF', 0.626497)"
