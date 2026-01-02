#!/bin/bash

echo "Creating BodyMind_App Next.js project..."

# 1. Create Next.js App
# npx create-next-app@latest bodymind-app --typescript --eslint --app --src-dir --import-alias "@/*"

# cd bodymind-app

echo "Installing dependencies..."

# 2. Install dependencies
npm install bootstrap chart.js react-chartjs-2 clsx

echo "Setting up directory structure..."

# 3. Create directories
mkdir -p src/app/{dashboard,profiles,settings}/components
mkdir -p src/components/ui
mkdir -p src/components/charts
mkdir -p src/lib
mkdir -p src/hooks
mkdir -p src/services
mkdir -p src/styles
mkdir -p src/types

echo "Creating boilerplate files..."

############################################
# 4. Global Layout + Theme Setup
############################################

cat <<EOF > src/app/layout.tsx
import 'bootstrap/dist/css/bootstrap.min.css';
import '../styles/globals.css';

export const metadata = {
  title: "BodyMind App",
  description: "Track your physical and mental wellness",
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
EOF

cat <<EOF > src/styles/globals.css
body {
  background-color: #f8f9fa;
  margin: 0;
  padding: 0;
  font-family: system-ui, sans-serif;
}
EOF

############################################
# 5. Dashboard Page
############################################

cat <<EOF > src/app/dashboard/page.tsx
export default function DashboardPage() {
  return (
    <div className="container py-4">
      <h1>Dashboard</h1>
      <p>Welcome to your BodyMind dashboard.</p>
    </div>
  );
}
EOF

############################################
# 6. Profiles Page
############################################

cat <<EOF > src/app/profiles/page.tsx
export default function ProfilesPage() {
  return (
    <div className="container py-4">
      <h1>Profiles</h1>
      <p>Manage multiple user profiles here.</p>
    </div>
  );
}
EOF

############################################
# 7. Settings Page
############################################

cat <<EOF > src/app/settings/page.tsx
export default function SettingsPage() {
  return (
    <div className="container py-4">
      <h1>Settings</h1>
      <p>Customize your BodyMind App experience.</p>
    </div>
  );
}
EOF

############################################
# 8. UI Components
############################################

cat <<EOF > src/components/ui/Card.tsx
export default function Card({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <div className="card mb-3">
      <div className="card-header fw-bold">{title}</div>
      <div className="card-body">{children}</div>
    </div>
  );
}
EOF

############################################
# 9. Chart Components
############################################

cat <<EOF > src/components/charts/LineChart.tsx
"use client";
import { Line } from "react-chartjs-2";
import { Chart as ChartJS, LineElement, CategoryScale, LinearScale, PointElement } from "chart.js";

ChartJS.register(LineElement, CategoryScale, LinearScale, PointElement);

export default function LineChart({ labels, data }: { labels: string[]; data: number[] }) {
  return (
    <Line
      data={{
        labels,
        datasets: [
          {
            label: "Metric",
            data,
            borderColor: "rgb(75, 192, 192)",
            tension: 0.3,
          },
        ],
      }}
    />
  );
}
EOF

############################################
# 10. Hooks
############################################

cat <<EOF > src/hooks/useLocalStorage.ts
import { useState, useEffect } from "react";

export function useLocalStorage<T>(key: string, initial: T) {
  const [value, setValue] = useState<T>(initial);

  useEffect(() => {
    const stored = localStorage.getItem(key);
    if (stored) setValue(JSON.parse(stored));
  }, [key]);

  useEffect(() => {
    localStorage.setItem(key, JSON.stringify(value));
  }, [key, value]);

  return [value, setValue] as const;
}
EOF

############################################
# 11. Services
############################################

cat <<EOF > src/services/profileService.ts
export function getProfiles() {
  return JSON.parse(localStorage.getItem("profiles") || "[]");
}

export function saveProfiles(profiles: any[]) {
  localStorage.setItem("profiles", JSON.stringify(profiles));
}
EOF

############################################
# 12. Types
############################################

cat <<EOF > src/types/profile.ts
export interface Profile {
  id: string;
  name: string;
  age: number;
  goals: string[];
}
EOF

echo "Setup complete! Your BodyMind_App project is ready."