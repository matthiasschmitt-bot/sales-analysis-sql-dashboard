# 📊 Dashboard – Konzept & Struktur

Dieses Dokument beschreibt den Aufbau des geplanten Sales-Dashboards.  
Es dient als Grundlage für die spätere Umsetzung in Power BI, Excel oder einem anderen Tool.

---

## 🎯 Ziel des Dashboards

- Überblick über die Verkaufsperformance
- Identifikation von Trends und Mustern
- Hervorheben von Top-Produkten und Top-Kunden
- Regionale Umsatzverteilung sichtbar machen
- Grundlage für Management-Entscheidungen

---

## 🧱 Dashboard-Bestandteile

### 1. KPI-Karten
- **Gesamtumsatz**
- **Anzahl Verkäufe**
- **Durchschnittlicher Bestellwert**
- **Anzahl Kunden**

---

### 2. Diagramme

#### 📈 Umsatz pro Monat
- Liniendiagramm
- Datenquelle: `sales.total_amount` gruppiert nach Monat

#### 🥇 Top-Produkte
- Balkendiagramm
- Sortiert nach verkaufter Menge

#### 🌍 Umsatz nach Region
- Balken- oder Kartenvisualisierung
- Datenquelle: Join aus `sales` und `customers`

---

### 3. Tabellen

#### Produktübersicht
- Produktname
- Kategorie
- Preis
- Gesamtverkaufte Menge
- Gesamtumsatz pro Produkt

#### Kundenübersicht
- Kundenname
- Region
- Gesamtumsatz
- Anzahl Bestellungen

---

## 🔗 Datenquellen

- `products.csv`
- `customers.csv`
- `sales.csv`
- SQL-Abfragen aus dem Ordner `/sql`

---

## 📝 Nächste Schritte

1. SQL-Abfragen finalisieren  
2. Dashboard in Power BI oder Excel erstellen  
3. Visuals anpassen und formatieren  
4. Export als PDF oder PNG für Präsentationen  
