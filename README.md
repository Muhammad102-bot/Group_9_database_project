# Group_9_database_project
Database Project
# 🏥 Public Health Clinic Records System

A relational database solution designed to manage and track the core operations of a community public health clinic. The system records and bridges the entire patient workflow—from scheduling an appointment, to logging the physical clinic visit, to archiving clinical diagnoses and treatments.

---

## 🚀 System Features

* **Relational Integrity:** Enforced using explicit foreign key constraints across all transactional tables.
* **Complete Workflow Coverage:** Tracks the medical journey through 5 interconnected tables (`patients`, `healthworker`, `appointment`, `visit`, and `medicalrecords`).
* **Optimized Storage:** Tailored schemas utilizing indexed primary keys, auto-increment fields, and proper data types.
---
## 🛠️ Tech Stack & Database Environment

* **Database Engine:** MariaDB (v10.4.25) / MySQL
* **Management Client:** phpMyAdmin (v5.2.0)
* **Language:** SQL
---

## 📐 Schema Overview & Architecture

The system is constructed around **5 core tables**:

### 1. 👥 Master Tables
* **`patients`**: Stores patient profiles (First/Last name, Date of Birth, Gender, Address, Phone, and National ID).
* **`healthworker`**: Contains clinic staff information, including clinical roles (Doctor/Nurse), medical specializations, and license numbers.

### 2. 🔄 Transactional Tables
* **`appointment`**: Tracks medical checkups, booking dates, reasons for visit, and scheduling statuses (Completed/Scheduled).
* **`visit`**: Captures real-time metrics when a patient arrives at the clinic, linking physical nurse/doctor check-in notes to the original appointment.
* **`medicalrecords`**: The final repository for patient encounters, tracking definitive clinical diagnoses, treatments, and prescriptions.

### 🔗 Relationship Map & Foreign Keys
* `appointment` references `patients` (`PatientsID`) and `healthworker` (`WorkerID`).
* `visit` references `appointment` (`AppointmentID`), `patients` (`PatientsID`), and `healthworker` (`WorkerID`).
* `medicalrecords` references `visit` (`VisitID`) and `patients` (`PatientsID`).

---

## ⚙️ Setup & Deployment

### Prerequisites
* Ensure you have a local environment running **XAMPP**, **WampServer**, or a standalone **MySQL/MariaDB** server instance.

### Installation Steps

1. **Import via phpMyAdmin (GUI):**
   * Open your dashboard at http://localhost/phpmyadmin/.
   * Create a new database named `publichealthclinicrecordssysytem.
   * Select your newly created database, click on the **Import** tab, choose the file `Group Project DATEBASE.sql.

2. **Import via Command Line (CLI):**
