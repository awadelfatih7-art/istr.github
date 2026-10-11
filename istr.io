<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>مطعم النكهة الطيبة</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- الهيدر -->
    <header>
        <h1>مطعم النكهة الطيبة 🍔</h1>
        <p>أهلاً بك! اختر وجبتك المفضلة واستمتع بالطعم الأصيل.</p>
    </header>

    <!-- قائمة الطعام -->
    <main>
        <section class="menu-container">
            <h2>قائمة الأطباق</h2>
            <div class="grid">
                
                <div class="card">
                    <h3>برجر لحم مشوي</h3>
                    <p>برجر لحم بقري طازج مع الجبن والخضار الطازجة.</p>
                    <span class="price">$8.50</span>
                    <button onclick="orderItem('برجر لحم مشوي')">اطلب الآن</button>
                </div>

                <div class="card">
                    <h3>بيتزا مارجريتا</h3>
                    <p>عجين إيطالي مقرمش مع صلصة الطماطم وجبن الموزاريلا.</p>
                    <span class="price">$10.00</span>
                    <button onclick="orderItem('بيتزا مارجريتا')">اطلب الآن</button>
                </div>

                <div class="card">
                    <h3>دجاج كريسبي مقرمش</h3>
                    <p>قطع دجاج مقرمشة مع البطاطس المقلية والصوص الخاص.</p>
                    <span class="price">$7.00</span>
                    <button onclick="orderItem('دجاج كريسبي')">اطلب الآن</button>
                </div>

            </div>
        </section>

        <!-- سلة الطلبات البسيطة -->
        <section class="cart-section">
            <h3>سلة الطلبات</h3>
            <p id="cart-status">لم تقم بطلب أي وجبة بعد.</p>
        </section>
    </main>

    <!-- الفوتر -->
    <footer>
        <p>جميع الحقوق محفوظة &copy; 2026</p>
    </footer>

    <script src="script.js"></script>
</body>
</html>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
    direction: rtl;
    color: #333;
}

header {
    background-color: #ff5722;
    color: white;
    text-align: center;
    padding: 2rem;
}

main {
    max-width: 1000px;
    margin: 20px auto;
    padding: 0 20px;
}

h2 {
    border-bottom: 2px solid #ff5722;
    padding-bottom: 5px;
    display: inline-block;
}

.grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
    margin-top: 20px;
}

.card {
    background: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    text-align: center;
}

.card h3 {
    margin-top: 0;
    color: #333;
}

.price {
    display: block;
    font-size: 1.2rem;
    color: #ff5722;
    font-weight: bold;
    margin: 10px 0;
}

button {
    background-color: #ff5722;
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 1rem;
    transition: background 0.3s;
}

button:hover {
    background-color: #e64a19;
}

.cart-section {
    margin-top: 40px;
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.05);
    text-align: center;
}

footer {
    text-align: center;
    padding: 15px;
    background-color: #333;
    color: white;
    margin-top: 40px;
}
function orderItem(itemName) {
    const cartStatus = document.getElementById('cart-status');
    cartStatus.innerHTML = `تمت إضافة <strong>${itemName}</strong> إلى سلة طلباتك بنجاح! 🛒`;
    cartStatus.style.color = "#2e7d32";
}
