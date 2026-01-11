# � Papan Tulis (Logistics Dashboard)

![Status](https://img.shields.io/badge/status-active-success.svg)
![Version](https://img.shields.io/badge/version-5.1.0-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

> A lightweight, real-time logistics whiteboard designed for high-speed operations.
> Replaces physical whiteboards with a cloud-synced, mobile-first digital experience.

## ✨ Overview

**Papan Tulis** ("Whiteboard") helps logistics teams track truck movements (Gate In, Operations, Gate Out) in real-time. Built with a "No-Build" architecture, it runs entirely in the browser while syncing data instantly via **Supabase**.

### Why V5?

- ☁️ **Cloud Native**: Data lives in Supabase (PostgreSQL), accessible from anywhere.
- ⚡ **Real-Time**: Changes reflect instantly on all devices (WebSockets).
- 📱 **Mobile Optimizations**: Clean "App-like" feel on phones with touch-friendly controls.

## 🚀 Key Features

- **Smart Tracking**

  - **Auto-Formatting**: `b1234xx` → `B 1234 XX` (Indonesian Plates).
  - **Visual Index**: Trucks are always numbered `1, 2, 3...` regardless of database ID.
  - **Status Logic**: Auto-updates status (`PROSES` when unloading starts).

- **Premium UX**

  - **Interactive Toasts**: Beautiful feedback for every action (Success/Error).
  - **Dark Mode**: Automatic theme switching (Mocha/Latte).
  - **History Archive**: "Soft Delete" keeps your operational view clean without losing data.

- **Reporting**
  - **1-Click Export**: Generates a high-res `.jpg` report formatted strictly for official use (Black & White, Auto-sized columns).

## 🛠️ Technology Stack

| Component    | Technology                                      | Reason                                       |
| :----------- | :---------------------------------------------- | :------------------------------------------- |
| **Frontend** | [Alpine.js](https://alpinejs.dev/)              | Reactive state without the build step.       |
| **Styling**  | [Tailwind CSS](https://tailwindcss.com/)        | Rapid UI development with utility classes.   |
| **Backend**  | [Supabase](https://supabase.com/)               | Database, Realtime, and APIs out-of-the-box. |
| **Export**   | [html2canvas](https://html2canvas.hertzen.com/) | Client-side image generation.                |
| **Icons**    | [Lucide](https://lucide.dev/)                   | Clean, consistent SVG iconography.           |

## 📦 Project Structure

```bash
├── index.html      # 🧠 The Brain: UI, Logic, and State Management
├── style.css       # 🎨 The Polish: Special styles for Export/Printing
├── init_db.sql     # 🗄️ The Data: Database Schema and Security Policies
└── README.md       # 📖 The Doc: You are here
```

## ⚙️ Setup & Deployment

1.  **Database Setup**:
    - Create a project on [Supabase.com](https://supabase.com).
    - Run the contents of `init_db.sql` in the SQL Editor.
2.  **Configuration**:
    - Open `index.html`.
    - Update `supabaseUrl` and `supabaseKey` with your project credentials.
3.  **Run**:
    - Simply open `index.html` in Chrome/Edge/Safari.
    - No `npm install` or `npm run build` required.

## 🔒 Security Note

This project is configured for **Operational Speed** (Public Read/Write).

- **Current Model**: Anyone with the link can View and Edit (perfect for internal warehouse teams).
- **Future Upgrade**: Row Level Security (RLS) can be tightened to restrict edits to specific emails.

---

_Built with ❤️ for Logistics Efficiency._
