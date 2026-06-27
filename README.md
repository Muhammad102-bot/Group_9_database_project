# Group_9_database_project
Database Project
# 🏥 Public Health Clinic Records System

A relational database solution designed to manage and track the core operations of a community public health clinic[cite: 1]. The system records and bridges the entire patient workflow—from scheduling an appointment, to logging the physical clinic visit, to archiving clinical diagnoses and treatments[cite: 1].

---

## 🚀 System Features

* **Relational Integrity:** Enforced using explicit foreign key constraints across all transactional tables[cite: 1].
* **Complete Workflow Coverage:** Tracks the medical journey through 5 interconnected tables (`patients`, `healthworker`, `appointment`, `visit`, and `medicalrecords`)[cite: 1].
* **Optimized Storage:** Tailored schemas utilizing indexed primary keys, auto-increment fields, and proper data types[cite: 1].

---

## 🛠️ Tech Stack & Database Environment

* **Database Engine:** MariaDB (v10.4.25) / MySQL[cite: 1]
* **Management Client:** phpMyAdmin (v5.2.0)[cite: 1]
* **Language:** SQL[cite: 1]

---

## 📐 Schema Overview & Architecture

The system is constructed around **5 core tables**[cite: 1]:

### 1. 👥 Master Tables
* **`patients`**: Stores patient profiles (First/Last name, Date of Birth, Gender, Address, Phone, and National ID)[cite: 1].
* **`healthworker`**: Contains clinic staff information, including clinical roles (Doctor/Nurse), medical specializations, and license numbers[cite: 1].

### 2. 🔄 Transactional Tables
* **`appointment`**: Tracks medical checkups, booking dates, reasons for visit, and scheduling statuses (Completed/Scheduled)[cite: 1].
* **`visit`**: Captures real-time metrics when a patient arrives at the clinic, linking physical nurse/doctor check-in notes to the original appointment[cite: 1].
* **`medicalrecords`**: The final repository for patient encounters, tracking definitive clinical diagnoses, treatments, and prescriptions[cite: 1].

### 🔗 Relationship Map & Foreign Keys
* `appointment` references `patients` (`PatientsID`) and `healthworker` (`WorkerID`)[cite: 1].
* `visit` references `appointment` (`AppointmentID`), `patients` (`PatientsID`), and `healthworker` (`WorkerID`)[cite: 1].
* `medicalrecords` references `visit` (`VisitID`) and `patients` (`PatientsID`)[cite: 1].

---

## ⚙️ Setup & Deployment

### Prerequisites
* Ensure you have a local environment running **XAMPP**, **WampServer**, or a standalone **MySQL/MariaDB** server instance[cite: 1].

### Installation Steps

1. **Import via phpMyAdmin (GUI):**
   * Open your dashboard at `http://localhost/phpmyadmin/`[cite: 1].
   * Create a new database named `publichealthclinicrecordssysytem`[cite: 1].
   * Select your newly created database, click on the **Import** tab, choose the file `Group Project DATEBASE.sql`, and click **Go**[cite: 1].

2. **Import via Command Line (CLI):**
   ```bash
   mysql -u your_username -p publichealthclinicrecordssysytem < "Group Project DATEBASE.sql"
