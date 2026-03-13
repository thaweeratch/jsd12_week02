# GEMINI.md

## Directory Overview
This directory contains the design, requirements, and initial conceptual implementation for "ProjectPowerbank," an e-commerce platform specialized in selling power banks. The project focuses on solving battery depletion issues for travelers, remote workers, and commuters through features like lifestyle-based filtering and a smart charge estimator.

## Key Files
- **01_my-ecommerce.md**: Contains the project's problem statement, target audience (Travelers, Digital Nomads, Commuters), and core solution features (Lifestyle Filtering, Charge Estimator, Safety Certifications).
- **02_business-mo-canvas.excalidraw**: A Business Model Canvas visual representation.
- **03_use-case-diagram.excalidraw**: A Use Case Diagram detailing interactions between Customers and Admins.
- **04_er-diagram.excalidraw**: An Entity-Relationship Diagram mapping the database schema for products, orders, customers, and sales channels.
- **05_product-backlog.md**: A list of user stories for both Customers (filtering, estimation, ordering) and Admins (inventory management, sales tracking).
- **06_bring-it-to-javascript.js**: A JavaScript scratchpad containing mock data structures and function stubs for core features like registration, browsing, and checkout.

## Project Structure & Design
The system is designed to handle multiple sales channels (Web, Shopee, Lazada) with a centralized inventory. Key entities identified in the data model include:
1. **Customers**: Tracking user details and shipping addresses.
2. **Products**: Power bank specifications including capacity (mAh), wattage, and lifestyle tags.
3. **Channels**: Management of different sales platforms.
4. **Orders & OrderItems**: Transaction records linking customers to specific products and quantities.

## Usage
1. **Research**: Review `01_my-ecommerce.md` and `05_product-backlog.md` to understand the business requirements.
2. **Design**: Use the `.excalidraw` files to visualize the business model, system interactions, and data relationships.
3. **Development**: Use `06_bring-it-to-javascript.js` as a reference for the data schema and functional requirements when implementing the actual backend or frontend logic.
