
# 🌱 Sample Seed Data – AirBnB Project

## 📁 Directory: `database-script-0x02/`

This folder contains the SQL script used to populate the AirBnB database with sample data for testing.

---

## 📄 Files Included

- `seed.sql`:  
  Sample `INSERT INTO` statements for all entities in the schema.

---

## 🧪 Entities Covered

- User
- Property
- Booking
- Payment
- Review
- Message

---

## 📌 Usage

Make sure the database schema has already been created using `schema.sql`.

Then run the following to populate the tables:

```bash
mysql -u username -p database_name < seed.sql
```

This will help test relationships, constraints, and queries.
