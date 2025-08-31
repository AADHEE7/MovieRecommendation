# 🎬 Movie Recommendation System (SQL)

This project sets up a **Movie Recommendation System Database** using MySQL and the [MovieLens Dataset](https://grouplens.org/datasets/movielens/).

## 📂 Project Structure
- **01_create_database.sql** → Creates the database.
- **02_create_tables.sql** → Defines schema for movies, ratings, tags, and links.
- **03_load_data.sql** → Loads CSV files into tables.
- **04_indexes_constraints.sql** → Adds foreign keys and indexes.
- **05_queries_analysis.sql** → Contains SQL queries for analysis.

## 🚀 Features
- Import MovieLens dataset into MySQL.
- Analyze top-rated movies, most active users, and genre trends.
- Query-based recommendation exploration.

## ⚡ Setup
1. Install MySQL Server.
2. Download the MovieLens dataset (`ml-latest-small`).
3. Place CSV files in MySQL’s `Uploads` folder.
4. Run SQL scripts in order:
   ```bash
   mysql -u root -p < 01_create_database.sql
   mysql -u root -p < 02_create_tables.sql
   mysql -u root -p < 03_load_data.sql
   mysql -u root -p < 04_indexes_constraints.sql
   mysql -u root -p < 05_queries_analysis.sql
