db.StoreInventory.insertMany(
[{"item_id": 1,
"product_name": "EliteBook Pro",
"category": "Electronics",
"price": 1299.99,
"stock_quantity": 20,
"is_available": true,
"manufacturing_date": new Date(2022,10,10),
"supplier_info": {
  "supplier_name": "TechWorld",
  "supplier_contact": "techworld@example.com"
},
"customer_reviews": []
},
{
  "item_id": 2,
  "product_name": "Enigma Chronicles",
  "category": "Books",
  "price": 24.95,
  "stock_quantity": 30,
  "is_available": true,
  "manufacturing_date": new Date(2022,9,5),
  "supplier_info": {
    "supplier_name": "BookBoutique",
    "supplier_contact": "books@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 3,
  "product_name": "JavaBliss 3000",
  "category": "Home & Kitchen",
  "price": 79.99,
  "stock_quantity": 15,
  "is_available": true,
  "manufacturing_date": new Date(2022,11,15),
  "supplier_info": {
    "supplier_name": "KitchenCraft",
    "supplier_contact": "kitchen@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 4,
  "product_name": "EleganceEssence",
  "category": "Fashion Accessories",
  "price": 349.99,
  "stock_quantity": 25,
  "is_available": true,
  "manufacturing_date": new Date(2023,0,25),
  "supplier_info": {
    "supplier_name": "FashionEmporium",
    "supplier_contact": "fashion@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 5,
  "product_name": "HarmonyMaster Deluxe",
  "category": "Music & Instruments",
  "price": 599.99,
  "stock_quantity": 10,
  "is_available": true,
  "manufacturing_date": new Date(2023,1,28),
  "supplier_info": {
    "supplier_name": "MusicMansion",
    "supplier_contact": "music@example.com"
  },
  "customer_reviews": []
},

{
  "item_id": 6,
  "product_name": "ZenYoga Ultimate Set",
  "category": "Health & Fitness",
  "price": 49.95,
  "stock_quantity": 20,
  "is_available": true,
  "manufacturing_date":new Date(2023,2,8),
  "supplier_info": {
    "supplier_name": "WellnessWorld",
    "supplier_contact": "wellness@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 7,
  "product_name": "ArtisanAura Vase",
  "category": "Home Decor",
  "price": 59.99,
  "stock_quantity": 15,
  "is_available": true,
  "manufacturing_date":new Date(2023,3,20),
  "supplier_info": {
    "supplier_name": "HomeHarmony",
    "supplier_contact": "home@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 8,
  "product_name": "SnugglePal",
  "category": "Toys & Games",
  "price": 22.99,
  "stock_quantity": 30,
  "is_available": true,
  "manufacturing_date":new Date(2023,4,3),
  "supplier_info": {
    "supplier_name": "ToyTreasures",
    "supplier_contact": "toys@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 9,
  "product_name": "DreamRevive Night Cream",
  "category": "Beauty & Personal Care",
  "price": 89.99,
  "stock_quantity": 25,
  "is_available": true,
  "manufacturing_date":new Date(2023,5,15),
  "supplier_info": {
    "supplier_name": "BeautyEssentials",
    "supplier_contact": "beauty@example.com"
  },
  "customer_reviews": []
},{
  "item_id": 10,
  "product_name": "PowerSmash Pro",
  "category": "Sports & Outdoors",
  "price": 149.99,
  "stock_quantity": 15,
  "is_available": true,
  "manufacturing_date": new Date(2023,6,7),
  "supplier_info": {
    "supplier_name": "SportSupplies",
    "supplier_contact": "sports@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 11,
  "product_name": "TechSync Smartwatch",
  "category": "Electronics",
  "price": 199.99,
  "stock_quantity": 20,
  "is_available": true,
  "manufacturing_date": new Date(2023,7,12),
  "supplier_info": {
    "supplier_name": "TechInnovate",
    "supplier_contact": "tech@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 12,
  "product_name": "Galactic Odyssey",
  "category": "Books",
  "price": 34.99,
  "stock_quantity": 25,
  "is_available": true,
  "manufacturing_date":new Date(2023,8,7),
  "supplier_info": {
    "supplier_name": "GalaxyBooks",
    "supplier_contact": "books@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 13,
  "product_name": "SmoothBlend 5000",
  "category": "Home & Kitchen",
  "price": 89.95,
  "stock_quantity": 15,
  "is_available": true,
  "manufacturing_date": new Date(2023,9,19),
  "supplier_info": {
    "supplier_name": "KitchenWonders",
    "supplier_contact": "kitchen@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 14,
  "product_name": "OpulenceGlam",
  "category": "Fashion Accessories",
  "price": 499.99,
  "stock_quantity": 30,
  "is_available": true,
  "manufacturing_date":  new Date(2023,10,2),
  "supplier_info": {
    "supplier_name": "GlamBoutique",
    "supplier_contact": "fashion@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 15,
  "product_name": "ElectroJam Master",
  "category": "Music & Instruments",
  "price": 799.99,
  "stock_quantity": 10,
  "is_available": true,
  "manufacturing_date": new Date(2023,11,15),
  "supplier_info": {
    "supplier_name": "MusicRealm",
    "supplier_contact": "music@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 16,
  "product_name": "FitPulse Tracker",
  "category": "Health & Fitness",
  "price": 59.95,
  "stock_quantity": 20,
  "is_available": true,
  "manufacturing_date": new Date(2024,0,7),
  "supplier_info": {
    "supplier_name": "WellnessTech",
    "supplier_contact": "wellness@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 17,
  "product_name": "CrystalElegance Vase",
  "category": "Home Decor",
  "price": 79.99,
  "stock_quantity": 15,
  "is_available": true,
  "manufacturing_date": new Date(2024,1,21),
  "supplier_info": {
    "supplier_name": "CrystalAccents",
    "supplier_contact": "accents@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 18,
  "product_name": "DinoPal",
  "category": "Toys & Games",
  "price": 18.99,
  "stock_quantity": 30,
  "is_available": true,
  "manufacturing_date":new Date(2024,2,5),
  "supplier_info": {
    "supplier_name": "ToyKingdom",
    "supplier_contact": "toys@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 19,
  "product_name": "RadianceGlow Day Cream",
  "category": "Beauty & Personal Care",
  "price": 69.99,
  "stock_quantity": 25,
  "is_available": true,
  "manufacturing_date":new Date(2024,3,18),
  "supplier_info": {
    "supplier_name": "GlowEssentials",
    "supplier_contact": "beauty@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 20,
  "product_name": "SwiftStrike Badminton Set",
  "category": "Sports & Outdoors",
  "price": 89.99,
  "stock_quantity": 15,
  "is_available": true,
  "manufacturing_date":new Date(2024,4,2),
  "supplier_info": {
    "supplier_name": "SportEssentials",
    "supplier_contact": "sports@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 21,
  "product_name": "UltraVision 4K Smart TV",
  "category": "Electronics",
  "price": 1499.99,
  "stock_quantity": 20,
  "is_available": true,
  "manufacturing_date":new Date(2024,5,15),
  "supplier_info": {
    "supplier_name": "TechRevolution",
    "supplier_contact": "tech@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 22,
  "product_name": "Timeless Chronicles",
  "category": "Books",
  "price": 27.99,
  "stock_quantity": 25,
  "is_available": true,
  "manufacturing_date":new Date(2024,6,28),
  "supplier_info": {
    "supplier_name": "HistoricalBooks",
    "supplier_contact": "books@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 23,
  "product_name": "JuiceMaster Pro",
  "category": "Home & Kitchen",
  "price": 129.95,
  "stock_quantity": 15,
  "is_available": true,
  "manufacturing_date":new Date(2024,7,10),
  "supplier_info": {
    "supplier_name": "KitchenMaster",
    "supplier_contact": "kitchen@example.com"
  },
  "customer_reviews": []
},
{
  "item_id": 24,
  "product_name": "TimeLux Elite",
  "category": "Fashion Accessories",
  "price": 799.99,
  "stock_quantity": 30,
  "is_available": true,
  "manufacturing_date":new Date(2024,8,23),
  "supplier_info": {
    "supplier_name": "LuxuryTrends",
    "supplier_contact": "fashion@example.com"
  },
  "customer_reviews": []
}
]
);