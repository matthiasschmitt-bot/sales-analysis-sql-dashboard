# 📊 Sales Analysis – Überblick

Dieses Dokument fasst die wichtigsten Erkenntnisse aus den Verkaufsdaten zusammen.  
Die Daten stammen aus den Tabellen **products**, **customers** und **sales**.


## 🔹 Gesamtumsatz
- Zeigt, wie viel Umsatz insgesamt generiert wurde.
- Grundlage für alle weiteren KPIs.

## 🔹 Top-Produkte
- Identifiziert die Produkte mit der höchsten Nachfrage.
- Wichtig für Sortimentsplanung und Marketing.

## 🔹 Umsatz nach Region
- Zeigt regionale Unterschiede.
- Hilft bei der Planung von regionalen Kampagnen.

## 🔹 Umsatz pro Monat
- Zeigt saisonale Trends.
- Grundlage für Forecasting.
---

## 🧮 1. Gesamtumsatz

```sql
SELECT SUM(total_amount) AS total_revenue FROM sales;



SELECT p.product_name, SUM(s.quantity) AS total_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;




SELECT c.region, SUM(s.total_amount) AS revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.region
ORDER BY revenue DESC;


SELECT DATE_TRUNC('month', sale_date) AS month,
       SUM(total_amount) AS revenue
FROM sales
GROUP BY month
ORDER BY month;


---

# 👉 Wenn du die Datei gespeichert hast, sag einfach:

**„analysis ist gespeichert“**

Dann erstellen wir die **nächste Datei** im analysis‑Ordner — z. B. eine detaillierte KPI‑Analyse oder eine Produkt‑Deep‑Dive‑Analyse.

