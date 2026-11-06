# 🚢 Ro-Ro Ferry Management System

A comprehensive and robust web-based **Ro-Ro (Roll-on/Roll-off) Ferry Ticket Booking and Management System** built using PHP, MySQL, Bootstrap 5, and JavaScript. The system enables passengers to book ferry tickets, select seats, check trip schedules, browse onboard packages/facilities, and pay securely. It also provides a feature-rich Admin Panel for managing trips, bookings, packages, facilities, user queries, and system configurations.

---

## 🌟 Key Features

### 👤 Passenger (User) Panel
- **User Authentication**: Secure registration, login, and profile image upload, with integrated email verification.
- **Trip Search & Booking**: Real-time checking of ferry trip availability, schedules, and pricing.
- **Interactive Seat Selection**: Graphical seat selection interface for custom seating arrangements.
- **Onboard Packages & Facilities**: Booking of special cabins, hotels, gym, pool, club, cinema hall, and game zone access.
- **Checkout**: Legacy Cashfree sandbox integration, disabled by default.
- **PDF Ticket Generation**: Automatically generates a downloadable PDF ticket with QR codes upon successful payment.
- **Contact Support**: Dedicated contact form with automated admin notification.

### 🔑 Admin Panel
- **Dashboard Overview**: High-level statistics on bookings, revenue, active trips, and pending user queries.
- **Trip & Schedule Management**: Create, edit, and delete ferry trips, schedules, destinations, and fares.
- **Booking Management**: Track active bookings, verify passenger lists, and handle cancellations/refunds.
- **Amenities Management**: Dynamically configure onboard features, facilities (gym, pool, etc.), and travel packages.
- **User Queries**: View and respond to passenger queries sent through the contact form.
- **Carousel & Settings**: Dynamically update landing page banner carousels, team member sections, and site contact info.

---

## 🛠️ Technology Stack

- **Backend**: PHP (Object-Oriented & Procedural scripts)
- **Database**: MySQL (Relational database management)
- **Frontend**: HTML5, CSS3, JavaScript (ES6+), jQuery
- **CSS Framework**: Bootstrap 5 (with Bootstrap Icons)
- **Sliders & UI**: Swiper JS (responsive slider panels)
- **Composer Dependencies**:
  - `phpmailer/phpmailer`: For SMTP-based transactional emails.
  - `dompdf/dompdf`: For PDF ticket generation.
  - `cashfree/cashfree-pg`: Payment gateway integration.
  - `endroid/qr-code`: Dynamic QR code generation for tickets.

---

## 📂 Folder Structure

```
Roro-Ferry-Management-System/
├── admin/                 # Admin Panel files
│   ├── ajax/              # AJAX scripts for admin operations
│   ├── css/               # Admin panel stylesheets
│   ├── inc/               # Admin template inclusions (header, sidebar)
│   ├── uploads/           # Carousel, package, and facility images (retained for database links)
│   └── *.php              # Pages for managing trips, packages, bookings, settings, etc.
├── ajax/                  # AJAX endpoints for user login, registration, and seating
├── css/                   # Global and page-specific stylesheets
├── docs/                  # System documentation and manuals
├── downloads/             # Generated PDF tickets (contents ignored by Git)
├── images/                # Static image assets
├── inc/                   # DB Connection, SMTP configuration, headers, and footers
├── uploads/               # User uploaded profile pictures (retained for database references)
├── .gitignore             # Configured Git tracking exclusion list
├── composer.json          # PHP dependency definitions
├── composer.lock          # Locked PHP dependency versions
├── roroferry.sql          # MySQL database schema and seed data
├── *.php                  # User-facing website files (index, booking, payments, etc.)
└── README.md              # Project documentation and setup guide (this file)
```

---

## 🚀 Installation & Setup

Follow these steps to set up the project locally:

### 1. Prerequisites
- **Local Web Server**: Install [XAMPP](https://www.apachefriends.org/), WampServer, or Laragon with **PHP 8.0+** and **MySQL**.
- **Package Manager**: [Composer](https://getcomposer.org/) installed globally.

### 2. Clone the Repository
Clone this repository to your local web server directory (e.g., `C:/xampp/htdocs/`):
```bash
git clone https://github.com/krunal-018/Roro-Ferry-Management-System.git
```

### 3. Database and dependencies

Create an empty MySQL database named `roroferry`, then import `roroferry.sql`. This seed includes catalog, trip, and seat data. It omits user accounts, administrator credentials, and booking history. Run `composer install` from the project root.

### 4. Configure the PHP process

| Purpose | Environment variables |
| --- | --- |
| Database | `DB_HOST`, `DB_PORT`, `DB_NAME`, `DB_USER`, `DB_PASSWORD` |
| Email | `SMTP_HOST`, `SMTP_PORT`, `SMTP_USERNAME`, `SMTP_PASSWORD`, `SMTP_FROM`, `SMTP_FROM_NAME` |

Set these in the environment of Apache or PHP. Provision admin access separately in your local database. The included seed contains no login credentials.

Checkout and the legacy payment callback routes are disabled by default. Keep `ENABLE_LEGACY_SANDBOX_CHECKOUT` unset on public hosts. The legacy checkout is for isolated local sandbox testing only, with `CASHFREE_APP_ID` and `CASHFREE_SECRET_KEY` supplied from a test account.

Before publishing, rotate credentials that appeared in earlier commits and review the tracked project reports and assets. Old commits can still contain the original data.
