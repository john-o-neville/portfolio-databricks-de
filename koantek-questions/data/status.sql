-- Databricks notebook source
INSERT INTO koantek.ordertracker.status
(
  status_id,
  status_code
)
VALUES
  (1, 'Created'),
  (2, 'Shipped'),
  (3, 'Completed'),
  (99, 'Cancelled');
