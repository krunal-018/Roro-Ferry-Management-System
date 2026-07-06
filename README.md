# 🚢 Ro-Ro Ferry Management System

A comprehensive and robust web-based **Ro-Ro (Roll-on/Roll-off) Ferry Ticket Booking and Management System** built using PHP, MySQL, Bootstrap 5, and JavaScript. The system enables passengers to book ferry tickets, select seats, check trip schedules, browse onboard packages/facilities, and pay securely. It also provides a feature-rich Admin Panel for managing trips, bookings, packages, facilities, user queries, and system configurations.

---

## 🌟 Key Features

### 👤 Passenger (User) Panel
- **User Authentication**: Secure registration, login, and profile image upload, with integrated email verification.
- **Trip Search & Booking**: Real-time checking of ferry trip availability, schedules, and pricing.
- **Interactive Seat Selection**: Graphical seat selection interface for custom seating arrangements.
- **Onboard Packages & Facilities**: Booking of special cabins, hotels, gym, pool, club, cinema hall, and game zone access.
- **Secure Payments**: Integration with the Cashfree payment gateway.
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

### 3. Database Configuration
1. Open **phpMyAdmin** (`http://localhost/phpmyadmin`).
2. Create a new database named `roroferry`.
3. Import the file `roroferry.sql` located at the root of the project.
4. Verify database settings in `inc/connection.php`:
   ```php
   $con = mysqli_connect("localhost", "root", "", "roroferry");
   ```

### 4. Install PHP Dependencies
Open a terminal inside the project root directory and run:
```bash
composer install
```
*This will generate the `vendor/` directory and install `dompdf`, `phpmailer`, `cashfree`, and `qr-code` libraries.*

### 5. SMTP & Mail Setup
Configure SMTP settings in `inc/config.php` to enable email verification and contact forms:
```php
define("SMTP_HOST", "smtp.gmail.com");
define("SMTP_PORT", 587);
define("SMTP_FROM", "your-email@gmail.com");
define("SMTP_FROM_NAME", "Roro Ferry Services");
define("SMTP_USERNAME", "your-email@gmail.com");
define("SMTP_PASSWORD", "your-gmail-app-password"); // Google App Password (NOT account password)
```

---

## 🔐 Credentials for Testing

### 🔑 Admin Access
Go to the header log in modal, select the **Admin** role, and use the following:
* **Email/Username**: `nenish@gmail.com`
* **Password**: `nenish123`

### 👤 Test User Access
* **Email**: `krunalkaklotar2283@gmail.com`
* **Password**: *Available inside database users table*
