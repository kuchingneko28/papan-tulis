# 📋 Papan Tulis (Logistics Board)

A modern, mobile-first logistics tracking dashboard built with a single-file architecture. Designed for simplicity, speed, and offline reliability.

## ✨ Features

- **📱 Mobile-First Design**: Responsive card-based layout that works perfectly on phones, tablets, and desktops.
- **🌗 Dark/Light Mode**: Full theme support with a convenient toggle switch.
- **💾 Auto-Save**: Your data is automatically saved to LocalStorage, ensuring no data loss on refresh or close.
- **📸 1-Click Export**: Generates a professional, formatted JPG report (1400px width) ready for sharing (WhatsApp/Email).
- **⏱️ Real-Time & Statuses**:
  - Live clock (GMT+8 Singapore/WITA timezone).
  - Smart status tags (Green for DONE, Red for DELAY, etc.).
  - Automatic timestamps for new entries.

## 🛠️ Technology Stack

Built with a "No-Build" philosophy for maximum portability:

- **HTML5**: Semantic structure.
- **Tailwind CSS (CDN)**: Utility-first styling with custom RGB theme variables for transparency effects.
- **Alpine.js**: Lightweight reactivity and state management.
- **Lucide Icons**: Beautiful, consistent iconography.
- **html2canvas**: Client-side image generation for exports.

## 🚀 How to Use

No installation required!

1.  **Download** the repository.
2.  Open `index.html` in any modern browser.
3.  Start tracking!

## 📂 Project Structure

- `index.html`: Contains 99% of the app (UI, Logic, Dependencies).
- `style.css`: Contains specialized styles _only_ for the generated image export layout (`.printing-mode`).

## 📝 License

Distributed under the MIT License. See `LICENSE` for more information.
