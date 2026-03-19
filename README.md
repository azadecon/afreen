# Quartz setup for this vault

This folder stays your Markdown source. Quartz lives in [`.quartz`](/C:/Users/azad/pandora/rstudio/obsidian/afreen/.quartz) and builds this vault into a static site.

## Local preview

```powershell
cd .quartz
npm.cmd ci
npm.cmd run preview:vault
```

Open `http://localhost:8080`.

## GitHub publishing

The workflow in [`.github/workflows/deploy.yml`](/C:/Users/azad/pandora/rstudio/obsidian/afreen/.github/workflows/deploy.yml) deploys on pushes to `main`.

If this folder is not already connected to your GitHub repo:

```powershell
git init -b main
git remote add origin <your-private-repo-url>
git add .
git commit -m "Set up Quartz site"
git push -u origin main
```

Then in GitHub:

1. Open the repository settings.
2. Go to `Pages`.
3. Set `Source` to `GitHub Actions`.

Quartz derives the default Pages URL from the GitHub repository at build time. If you later use a custom domain, set `QUARTZ_BASE_URL` in your workflow or edit [`.quartz/quartz.config.ts`](/C:/Users/azad/pandora/rstudio/obsidian/afreen/.quartz/quartz.config.ts).

GitHub Pages from a private repository requires a paid GitHub plan. If you are on GitHub Free, make the repository public or use another static host.
