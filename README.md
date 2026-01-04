BodyMind App — Vite + React

## Getting Started

Development:

```bash
npm install
npm run dev
```

The dev server runs at http://localhost:5173 by default.

Build for production:

```bash
npm run build
npm run preview
```

Notes:
- The app entry is `src/main.tsx` and routes live in `src/App.tsx` using `react-router-dom`.
- Styles and static assets are in `src/` and `public/` respectively.

Deployment
- The site is published at: https://srinadella.github.io

Automatic deploy (GitHub Actions): pushes to `main` will build and publish the `dist/` directory to the `gh-pages` branch (CI is already configured).

Manual deploy (optional): you can deploy directly from your machine:

```bash
npm install
npm run build
npm run deploy
```

If you want me to, I can continue by removing leftover Next build artifacts, adjusting linters, and simplifying the repo. Let me know and I’ll proceed. ✅
