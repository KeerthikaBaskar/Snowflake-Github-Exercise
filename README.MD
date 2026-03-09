# Real-Time E-Commerce Analytics Platform (Snowflake)

## Project Overview

This project demonstrates how to build a **real-time analytics platform for an e-commerce marketplace using Snowflake**.

The system processes order data in real time, detects fraudulent transactions, tracks seller performance, and calculates revenue analytics.

## Architecture

Website → JSON Orders → Snowpipe → Raw Layer → Streams → Tasks → Core Data Warehouse → Analytics Layer

Key Snowflake features used:

* Snowpipe (Real-time ingestion)
* Streams (CDC)
* Tasks (Automation)
* Dynamic Tables
* SCD Type 2
* Clustering
* Secure Data Sharing
* Resource Monitor

## Use Cases

* Real-time order ingestion
* Customer lifetime analytics
* Fraud detection
* Seller performance analytics
* Data sharing with sellers

## Technologies Used

* Snowflake
* SQL
* JSON
* Data Warehousing Concepts
* CDC (Change Data Capture)

## How to Run

1. Run SQL scripts in order:

```
01_database_setup.sql
02_stage_and_snowpipe.sql
03_raw_tables.sql
04_streams_tasks.sql
05_dimension_tables.sql
06_fact_tables.sql
07_dynamic_tables.sql
08_fraud_detection.sql
09_seller_analytics.sql
```

2. Upload sample JSON files to the Snowflake stage.

3. Trigger Snowpipe.

4. Query analytics tables.

## Example Queries

Daily revenue

```sql
SELECT * FROM analytics.daily_revenue;
```

Fraud transactions

```sql
SELECT * FROM analytics.fraud_orders;
```

Seller performance

```sql
SELECT * FROM analytics.seller_performance;
```
