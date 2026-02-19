# 🚀 Getting Started — Setup Guide

## Step 1: Fork & Clone This Repo

```bash
# Option A: Clone directly (if this is your own repo)
git clone https://github.com/YOUR-USERNAME/ml-ds-roadmap.git
cd ml-ds-roadmap

# Option B: If you forked it
git clone https://github.com/YOUR-USERNAME/ml-ds-roadmap.git
cd ml-ds-roadmap
```

## Step 2: Set Up Your Environment

### Install Core Tools
```bash
# Python (should already be installed)
python3 --version

# Create virtual environment
python3 -m venv venv
source venv/bin/activate  # Linux/Mac

# Install base DS/ML packages
pip install pandas numpy matplotlib seaborn scikit-learn jupyter
pip install plotly streamlit beautifulsoup4 requests
```

### Install PostgreSQL
1. Download from https://www.postgresql.org/download/
2. Install pgAdmin for GUI
3. Import sample database:
   ```bash
   # Download dvdrental sample DB
   # Import: pg_restore -U postgres -d dvdrental dvdrental.tar
   ```

### Set Up VS Code
1. Install VS Code
2. Install extensions:
   - Python
   - SQLTools + SQLTools PostgreSQL
   - GitLens
   - Jupyter

### Create Accounts
- [ ] [DataLemur](https://datalemur.com) — SQL practice
- [ ] [LeetCode](https://leetcode.com) — DSA practice
- [ ] [StrataScratch](https://stratascratch.com) — SQL practice
- [ ] [Kaggle](https://kaggle.com) — Competitions & datasets
- [ ] [Google Colab](https://colab.research.google.com) — Free GPU
- [ ] [Google BigQuery](https://cloud.google.com/bigquery) — Free tier
- [ ] [HackerRank](https://hackerrank.com) — Practice

## Step 3: Daily Workflow

```bash
# Start each day
cd ml-ds-roadmap
git pull  # if working across devices

# After studying/coding
git add .
git commit -m "Day X: [what you did]"
git push

# Example commit messages:
# "Day 1: SQL basics - SELECT, WHERE, ORDER BY"
# "Day 5: Solved 3 DataLemur problems on window functions"
# "Day 13: Completed Danny's Diner case study"
```

## Step 4: Track Progress

1. Update checkboxes in monthly README files
2. Fill in the weekly log in `docs/WEEKLY-LOG.md`
3. Update the main `README.md` progress dashboard monthly
4. Use GitHub Issues for weekly reviews (template provided)

## Tips for Consistency

- **Commit daily** — even notes count
- **Set phone alarm** for study time
- **Public accountability** — share on LinkedIn weekly
- **Don't break the chain** — aim for green GitHub graph
- **Rest is productive** — take Sundays lighter

*You've got this, David. One commit at a time.* 🇬🇭
