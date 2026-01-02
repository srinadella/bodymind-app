import 'bootstrap/dist/css/bootstrap.min.css';
import '../styles/globals.css';

export const metadata = {
  title: "BodyMind App",
  description: "Track your physical and mental wellness",
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>
        <nav className="navbar navbar-expand-lg navbar-light bg-light">
          <div className="container">
            <a className="navbar-brand" href="/">BodyMind</a>
            <button
              className="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarNav"
              aria-controls="navbarNav"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span className="navbar-toggler-icon"></span>
            </button>
            <div className="collapse navbar-collapse" id="navbarNav">
              <ul className="navbar-nav ms-auto">
                <li className="nav-item"><a className="nav-link" href="/dashboard">Dashboard</a></li>
                <li className="nav-item"><a className="nav-link" href="/profiles">Profiles</a></li>
                <li className="nav-item"><a className="nav-link" href="/settings">Settings</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <main className="container py-4">{children}</main>
      </body>
    </html>
  );
}
