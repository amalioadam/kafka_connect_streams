CREATE USER jdbc WITH PASSWORD 'jdbc_pw';
GRANT ALL PRIVILEGES ON DATABASE inventory to jdbc;

CREATE TABLE keywords (
    project_id BIGINT NOT NULL,
    keyword_id BIGINT NOT NULL,
    validity tsrange ,
    created_at TIMESTAMPTZ
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public to jdbc;