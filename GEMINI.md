# GEMINI.md

## Directory Overview
This directory contains the design and database implementation for an e-commerce platform, specifically tailored for a burger shop business. It serves as a comprehensive workspace that bridges business modeling, system design, and relational database architecture.

The project is structured to guide the transition from high-level business concepts to a functional PostgreSQL database schema.

## Key Files
- **Design & Requirements:**
  - `02_business-mo-canvas.excalidraw`: Visual representation of the Business Model Canvas.
  - `03_use-case-diagram.excalidraw`: Use Case Diagram detailing system interactions and actors.
  - `04_er-diagram.excalidraw`: Entity-Relationship Diagram mapping out the database structure.
  - `05_product-backlog.md`: Product backlog containing user stories and functional requirements.
- **Database Implementation (`postgresql/`):**
  - `create-tables.sql`: The primary schema definition file containing `CREATE TABLE` statements for the entire system.
  - `01_suppliers.sql` through `07_order_items.sql`: Modularized SQL scripts for populating the database with mock data in the correct dependency order.
  - `query.sql`: A collection of SQL queries for testing and data analysis.
- **Development Placeholders:**
  - `06_bring-it-to-javascript.js`: A placeholder file for future JavaScript-based application logic or backend implementation.

## Database Schema
The system implements a relational model with the following core entities:
1.  **Suppliers**: Management of ingredient providers.
2.  **Staff**: Tracking of employees and their roles (e.g., Cook, Cashier).
3.  **Ingredients**: Inventory management with stock levels and unit tracking.
4.  **MenuItems**: The shop's offerings, categorized by type (Burger, Side, Drink).
5.  **RecipeItems**: A mapping table linking Ingredients to MenuItems with required quantities.
6.  **Orders**: Customer transaction records, associated with staff members.
7.  **OrderItems**: Detailed breakdown of items within each order.

## Usage
1.  **Exploration**: Begin by reviewing the `.excalidraw` diagrams to understand the business logic and data relationships.
2.  **Schema Setup**: Execute `postgresql/create-tables.sql` in a PostgreSQL environment to initialize the database structure.
3.  **Data Population**: Run the numbered scripts in the `postgresql/` directory sequentially (from `01_suppliers.sql` to `07_order_items.sql`) to ensure all foreign key constraints are satisfied.
4.  **Verification**: Use `postgresql/query.sql` to perform sample queries and verify the integrity of the data.
