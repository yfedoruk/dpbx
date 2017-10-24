SELECT column_name
FROM information_schema.columns
WHERE table_schema = ''
  AND table_name   = '';