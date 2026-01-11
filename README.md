# 📋 Papan Tulis V5 (Cloud Edition)

A modern, cloud-synced logistics dashboard built for speed and reliability. Now powered by **Supabase Real-time**.

## ✨ What's New in V5?

- **☁️ Cloud Sync**: Data is stored securely in the cloud, not just on your device.
- **⚡ Real-Time Collaboration**: Updates (Add/Edit/Delete) appear instantly on all connected devices.
- **📜 History & Archiving**: soft-delete system keeps your dashboard clean while preserving audit logs.
- **� Interactive UI**: Toast notifications, loading spinners, and premium visual feedback.

## 🚀 Key Features

- **📱 Mobile-First**: Optimized for phones and tablets (Gateway Staff).
- **🌗 Dark/Light Mode**: Full theme support (Mocha/Latte).
- **📸 professional Export**: Generates a clean B&W JPG report for managers/WhatsApp.
- **⏱️ Smart Automation**:
  - Auto-formatting for Plate Numbers (`b1234xx` -> `B 1234 XX`).
  - Auto-sorting by Arrival Time.
  - "Smart Status" logic (Waiting -> Process -> Done).

## 🛠️ Technology Stack

- **Frontend**: Alpine.js + Tailwind CSS (Single File Architecture).
- **Backend**: Supabase (PostgreSQL + Realtime).
- **Icons**: Lucide Icons.
- **Export**: html2canvas.

## 🚀 How to Use

1.  Open `index.html` in any browser.
2.  **Add Truck**: Click the (+) Floating Button.
3.  **Manage**: Edit details, set statuses, or delete (move to archive).
4.  **Export**: Click the Camera icon for a daily report.

## 📂 Project Structure

- `index.html`: The entire application logic and UI.
- `init_db.sql`: Database schema and security policies for Supabase.
- `style.css`: Print-specific styles for the JPG export.

## 📝 License

Distributed under the MIT License.
