INSERT INTO credentials VALUES 

-- Example: Alice
(
  '', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'alice', -- username
  '4000$8$3$27de1e5a0790376e7e988f40b13480631a48f6b9712eec7455465c60437fa098$8206e98022c54f9263d065d67937840a697b96956fd1a099c4ade5c9eac4385e' -- password_as_scrypt of "secret"
),

-- Example:  Bob
(
  '', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'bob', -- username
  '"2000$8$1$219c3cfe5f6e0fe170393c032b012837b802aa1d7cad14a7e40b64e0c4c2d2fa$b16a3b98c5d201f9f6bad810f13822e102acabbbc281303b6ac9885fd08dd8fb' -- password_as_scrypt of "confidential"
);
