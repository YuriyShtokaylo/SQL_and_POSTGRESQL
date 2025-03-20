INSERT INTO membership_types (
    name,
    price,
    billing_frequency

)
VALUES (
    'Monsly',
    19.99,
    12
),(
    'Yearly',
    199.99,
    1
);

INSERT INTO memberships (
    membership_start,
    membership_end,
    last_checkin,
    last_checkout,
    consumption,
    membership_type_id

)
VALUES (
    '2021-10-01',
    NULL,
    '2021-10-01 05:17:36',
    '2021-10-01 06:20:45',
    26.49,
    1
),(
    '2020-05-10',
    '2022-05-09',
    '2021-11-03 10:01:56',
    '2021-11-03 14:30:00',
    100.26,
    2
),(
    '2021-02-18',
    '2022-02-17',
    '2021-10-29 15:26:05',
    '2021-10-29 17:01:33',
    5.10,
    2
);

INSERT INTO members (
    first_name,
    last_name,
    gender,
    membership_id

)
VALUES (
    'Max',
    'Schwarz',
    'male',
    1
),(
    'Manu',
    'Lorenz',
    'male',
    2
),(
    'Julie',
    'Barnes',
    'female',
    3
);