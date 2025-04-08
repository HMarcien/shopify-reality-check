
<p align="center">
  <img src="assets/banner.png" alt="Shopify Reality Check Banner" />
</p>

# Shopify Reality Check 🛠️📦

**An intelligent audit system to verify whether a Shopify merchant is truly delivering on their logistical promises.**

---

## 🌍 Context

In the Shopify ecosystem, the simplicity of commerce often hides very real **logistical complexities**: shipping delays, unfulfilled promises, frequent refunds, etc. These weak signals often go unnoticed by merchants.

**Shopify Reality Check** is a backend tool designed to:
- Automatically audit a store’s operational performance
- Detect discrepancies between what was promised to customers and what actually happened
- Provide smart predictions of future delays via a neural network

---

## 🔍 Project Objectives

- **Analyze** Shopify store data (orders, products, fulfillments)
- **Detect** logistical anomalies: frequent delays, slow shipping, suspicious refunds
- **Predict** future delay risks using a lightweight machine learning model (via [Malt](https://docs.racket-lang.org/malt/index.html))
- **Deliver** results via a clean REST API for integration or visualization

---

## 🧠 What this project demonstrates

- My ability to design a backend tool focused on real-world merchant needs
- Deep understanding of the Shopify ecosystem (API, e-commerce logistics)
- Neural network integration written in Racket using the Malt library
- A product-oriented mindset centered on operational truth and quality

---

## 📦 Tech Stack

- **Language**: [Racket](https://racket-lang.org/)
- **ML Library**: [Malt](https://docs.racket-lang.org/malt/index.html)
- **API**: Built with Racket's native HTTP server
- **Data sources**:
  - Shopify Dev Store (official API)
  - Manually generated edge-case mocks
- **Output**: REST API + detailed JSON audit report

---

## 🚀 Key Features

- `GET /audit`  
  → Returns a structured JSON report with metrics and detected anomalies

- `POST /predict-delay`  
  → Predicts the probability of delay for a given order

- `GET /health`  
  → Health check of audit and predictive components

---

## 🎯 Target Audience

- Shopify merchants who want to **measure their actual operational reliability**
- Developers/agencies looking to offer **logistics quality insights**
- Shopify internal teams interested in autonomous diagnostic tools

---

## ✨ Next Steps

This repository is a starting point. Long-term ambitions include:
- Adding a minimal UI for merchants
- Exporting printable PDF reports
- Expanding predictive models (e.g. return/refund likelihood)

---

📫 Curious about the tech or the approach?  
I’d be happy to connect – code@shopify.com

---

## ⚙️ Installation & Run

### 🐧 Requirements

- Racket installed: [https://racket-lang.org/](https://racket-lang.org/)
- Access to a Shopify Dev Store (with private API token)
- API token passed via a `config.rkt` file or `SHOPIFY_TOKEN` env variable

### 📦 Dependencies

Install the following Racket packages:

```bash
raco pkg install malt
raco pkg install http
raco pkg install json
raco pkg install threading
```

### ▶️ Run the project

```bash
racket app/main.rkt
```

By default, the API runs on [http://localhost:8080](http://localhost:8080)

---

## 🔗 API Usage Examples

### Logistics audit

```bash
curl http://localhost:8080/audit
```

Example response:

```json
{
  "store_name": "mock-boutique-eco",
  "total_orders": 134,
  "late_fulfillments": 22,
  "avg_delay_days": 2.4,
  "refund_rate": 0.12,
  "suspicious_products": [
    {
      "product_id": "836204917",
      "title": "Eco White T-shirt",
      "avg_shipping_delay": 3.9
    }
  ],
  "reliability_score": 76.2
}
```

### Delay prediction

```bash
curl -X POST http://localhost:8080/predict-delay      -H "Content-Type: application/json"      -d '{
           "order": {
             "created_at": "2025-04-06T11:15:00Z",
             "products": ["#542", "#978"],
             "inventory": { "#542": 5, "#978": 0 },
             "day_of_week": "Monday"
           }
         }'
```

Example response:

```json
{
  "delay_probability": 0.84,
  "estimated_delay_days": 2.7,
  "risk_level": "high"
}
```

---

## 🧪 Simulated Mock Data

Enable mock mode to test edge cases:
- Products always marked in stock but shipped late
- Orders never refunded despite issues
- Fulfillments created days after order

Run the API in mock mode:

```bash
racket app/main.rkt --mock
```

---

## 🧰 API Overview

| Endpoint          | Method | Description                                 |
|-------------------|--------|---------------------------------------------|
| `/audit`          | GET    | Generates a logistics quality audit         |
| `/predict-delay`  | POST   | Predicts shipping delay for an order        |
| `/health`         | GET    | Health check for core services              |

---

## 🤖 Reflexive AI usage – built-in by design

> Inspired by [Tobi Lütke’s call](https://x.com/tobi/status/1909251946235437514) for **reflexive AI usage** as a baseline expectation at Shopify,  
> this project integrates AI not as a gimmick, but as a **natural extension of the backend logic**.

- Predictions are made through a neural network written in **Racket** using the [Malt](https://docs.racket-lang.org/malt/index.html) library.
- The AI is embedded **directly in the workflow**: analyzing fulfillment patterns, scoring risk, anticipating delays.
- The model runs locally, trains quickly on mock or real data, and reflects **how I use AI daily to think, build, and iterate faster**.

> This is my way of saying: I don’t just use AI — I work **with** it.

---
