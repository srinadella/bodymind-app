export default function Home() {
  return (
    <div>
      <h1 className="mb-3">Welcome to BodyMind</h1>
      <p className="mb-3">Track your physical and mental wellness.</p>
      <div className="d-flex gap-2">
        <a className="btn btn-primary" href="/dashboard">Dashboard</a>
        <a className="btn btn-secondary" href="/profiles">Profiles</a>
        <a className="btn btn-outline-secondary" href="/settings">Settings</a>
      </div>
    </div>
  );
}
