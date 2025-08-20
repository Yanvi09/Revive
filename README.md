# 🏥 Revive – Smart Hospital Management System  
**"Revive" is not just a name — it's a second chance, engineered for real lives.**

A full-stack hospital management system built with **Laravel, MySQL, and WebSockets**, designed to modernize and automate real-time healthcare operations like appointments, bed tracking, and paperless admissions.  

🔗 [Video Demo on LinkedIn](https://www.linkedin.com/posts/anvi-yadav_revive-healthtech-fullstackdevelopment-activity-7324534940518252544-pjs0?utm_source=share&utm_medium=member_desktop&rcm=ACoAAD5o7oIBVQf-r7DdN8fQY5BvTfN0gFTDjFU)

---

## Key Features

### Core Backend Logic
- **Secure JWT Auth** with Laravel Sanctum  
- **RESTful APIs** for Patients, Appointments, Beds, Inventory  
- **Role-Based Access Control** – Admin vs Patient
- **Real-Time Queue Updates** via WebSockets (Pusher)
- **Bed Occupancy System** with live status flags
- **QR-based Admission/Discharge** (Planned with Flutter frontend)

---

## ⚙️ Tech Stack

| Layer        | Technologies                      |
|--------------|-----------------------------------|
| Backend      | Laravel 11, Sanctum, MySQL        |
| Real-Time    | Pusher WebSockets                 |
| AI/ML Layer  | FastAPI + Python (for queue logic)|
| Auth         | Laravel Sanctum (JWT)             |
| Frontend     | Blade (Admin) + Flutter (Planned) |

---

## Folder Structure (Laravel Backend)
```bash
revive-backend/
├── app/
│   ├── Models/                # Doctor, Patient, Appointment, Bed, InventoryItem
│   ├── Http/
│   │   ├── Controllers/       # API logic
│   │   └── Middleware/
├── routes/
│   ├── api.php                # API for Flutter + Admin Panel
│   └── web.php
├── resources/
│   └── views/                 # Blade Templates (Admin)
├── database/
│   └── migrations/            # Table Schema
├── .env                       # DB + Auth Keys
```



Author
Anvi Yadav
- LPU, Spring 2026
- Backend | AI | Open Source
- GitHub --https://github.com/Yanvi09
- Linkedln --linkedin.com/in/anvi-yadav  
