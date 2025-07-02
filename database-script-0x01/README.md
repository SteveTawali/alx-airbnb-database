
# 📦 Database Schema – AirBnB Project

## 📁 Directory: `database-script-0x01/`

This folder contains the **SQL schema** required to build the AirBnB database in MySQL.

---

## 🛠 Files Included

- `schema.sql`:  
  Full MySQL-compatible SQL script to create all tables, foreign keys, constraints, and indexes.

---

## 🧱 Entities in the Schema

- **User**
- **Property**
- **Booking**
- **Payment**
- **Review**
- **Message**

---

## ✅ Features Implemented

- All primary and foreign keys
- ENUM types and timestamp defaults
- Indexes for common search columns
- Constraints to ensure data integrity

---

## 📌 Usage

To create the database structure, run this:

```bash
mysql -u username -p database_name < schema.sql
```

Make sure your database exists before running the script.
