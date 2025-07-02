
# Database Normalization – AirBnB Schema

## ✅ Objective

To ensure that the AirBnB database design is efficient, consistent, and adheres to the Third Normal Form (3NF) by eliminating redundancies and improving data integrity.

---

## 🧩 Normalization Process

### 🔹 First Normal Form (1NF)
- Ensures that:
  - All columns have atomic values (no lists or sets).
  - Each column contains values of the same type.
  - Each row is unique.

✅ Our schema already satisfies 1NF:
- No repeating groups or arrays.
- All attributes are atomic.

---

### 🔹 Second Normal Form (2NF)
- Requires:
  - The table is already in 1NF.
  - All non-key attributes are fully functionally dependent on the **entire** primary key (no partial dependencies).

✅ Our schema satisfies 2NF:
- All tables have single-column primary keys (UUIDs).
- All non-key columns depend entirely on the primary key.

---

### 🔹 Third Normal Form (3NF)
- Requires:
  - The table is in 2NF.
  - No transitive dependency exists (non-key attributes should not depend on other non-key attributes).

✅ Our schema satisfies 3NF:
- Each non-key column is directly dependent on the primary key.
- No redundant or derived data (e.g., total_price is calculated but justified for reporting).

---

## ⚠️ Notes and Justification

| Table     | Observation                                                                 |
|-----------|-------------------------------------------------------------------------------|
| Booking   | `total_price` is derived (based on `pricepernight` × duration), but stored for performance and audit purposes. |
| Review    | No transitive dependencies (rating and comment depend on review_id).         |
| Message   | sender_id and recipient_id both refer to User — ensures normalized messaging.|
| Payment   | Clean relationship to Booking only — no user duplication.                    |

---

## ✅ Conclusion

All tables in the current AirBnB schema are **normalized up to 3NF**. The design avoids redundancy, ensures referential integrity, and maintains atomicity, making the system scalable and efficient for production use.
