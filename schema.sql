-- 创建数据库（如果还没创建）
CREATE DATABASE IF NOT EXISTS filedb CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE filedb;

-- 文件元信息表
CREATE TABLE IF NOT EXISTS file_meta (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  original_name VARCHAR(512) NOT NULL,
  storage_name VARCHAR(512) NOT NULL,
  content_type VARCHAR(256),
  size BIGINT,
  storage_path VARCHAR(1024) NOT NULL,
  upload_time DATETIME DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_upload_time (upload_time)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;