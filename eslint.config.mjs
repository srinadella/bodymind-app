import { defineConfig } from "eslint/config";

const eslintConfig = defineConfig({
  ignorePatterns: ["dist/**", "build/**", "node_modules/**"],
});

export default eslintConfig;
