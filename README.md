# Backend CRUD API

REST API built with **Node.js**, **Express**, and **MongoDB** (Mongoose).

## Prerequisites

- [Node.js](https://nodejs.org/) 18+
- [MongoDB](https://www.mongodb.com/try/download/community) running locally, or a MongoDB Atlas connection string

## Setup

```bash
cd D:\backend-crud-api
npm install
copy .env.example .env
```

Edit `.env` and set your MongoDB URI if needed.

## Run

```bash
# Development (auto-reload)
npm run dev

# Production
npm start
```

Server: `http://localhost:5000`

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/health` | Health check |
| GET | `/api/products` | List all products |
| GET | `/api/products/:id` | Get one product |
| POST | `/api/products` | Create product |
| PUT | `/api/products/:id` | Update product |
| DELETE | `/api/products/:id` | Delete product |

### Query params (GET `/api/products`)

- `category` — filter by category
- `inStock=true|false` — filter by stock status
- `search` — search name/description (case-insensitive)

### Create / Update body (JSON)

```json
{
  "name": "Wireless Mouse",
  "description": "Ergonomic wireless mouse",
  "price": 29.99,
  "category": "electronics",
  "inStock": true
}
```

## Example requests (PowerShell)

```powershell
# Create
Invoke-RestMethod -Uri http://localhost:5000/api/products -Method POST -ContentType "application/json" -Body '{"name":"Laptop","price":999,"category":"electronics"}'

# List
Invoke-RestMethod -Uri http://localhost:5000/api/products

# Get by ID
Invoke-RestMethod -Uri http://localhost:5000/api/products/<id>

# Update
Invoke-RestMethod -Uri http://localhost:5000/api/products/<id> -Method PUT -ContentType "application/json" -Body '{"price":899}'

# Delete
Invoke-RestMethod -Uri http://localhost:5000/api/products/<id> -Method DELETE
```

## Project structure

```
src/
├── config/db.js          # MongoDB connection
├── controllers/          # Route handlers
├── middleware/           # Error handling
├── models/               # Mongoose schemas
├── routes/               # API routes
├── app.js                # Express app
└── server.js             # Entry point
```
