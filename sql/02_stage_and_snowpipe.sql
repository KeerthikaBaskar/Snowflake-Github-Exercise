CREATE FILE FORMAT json_format
TYPE = JSON;

CREATE STAGE order_stage
FILE_FORMAT = json_format;

CREATE PIPE orders_pipe
AUTO_INGEST = FALSE
AS
COPY INTO raw.orders_raw(raw_variant)
FROM @order_stage
FILE_FORMAT = (TYPE = JSON);