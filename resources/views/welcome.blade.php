<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WinNews</title>
    <!-- Hubungkan file app.css -->
    @vite('resources/css/app.css')
</head>
    <body>
    <header class="header">
        <div class="logo">
            <img src="logo.jpeg" alt="WinNews Logo">
            <h1>WinNews</h1>
        </div>
        <nav class="nav">
            <a href="#">Home</a>
            <a href="#">News</a>
            <a href="#">Domestic</a>
            <a href="#">Trending</a>
        </nav>
    </header>

    <main class="container">
        <!-- Main News Section -->
        <section class="main-news">
            <div class="featured-news">
                <img src="kpk.jpg" alt="Main News">
                <p>Geledah Rumah KPK Sita Uang Tunai Rp 2.4 M Terkait Kasus Investasi Fiktif</p>
            </div>
            <div class="news-grid">
                <div class="news-item">
                    <img src="kpk.jpg" alt="News 1">
                    <p>Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                </div>
                <div class="news-item">
                    <img src="kpk.jpg" alt="News 2">
                    <p>Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                </div>
                <div class="news-item">
                    <img src="kpk.jpg" alt="News 3">
                    <p>Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                </div>
                <div class="news-item">
                    <img src="kpk.jpg" alt="News 4">
                    <p>Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                </div>
            </div>
        </section>

        <!-- Sidebar -->
        <aside class="sidebar">
            <h2>Latest News</h2>
            <ul>
                <li>Breaking News: Teknologi Masa Depan</li>
                <li>Update: Kebijakan Baru Pemerintah</li>
                <li>Tips: Menjadi Lebih Produktif</li>
                <li>Event: Seminar Nasional Teknologi</li>
            </ul>
        </aside>
    </main>

    <!-- Footer -->
    <footer class="footer">
    <div class="footer-logo">
        <img src="News.png" alt="WinNews">
        <p>Winni Code Garuda Teknologi</p>
    </div>
    <div class="footer-contact">
        <h3>Contact Us:</h3>
        <p>Instagram</p>
        <p>Facebook</p>
        <p>WhatsApp</p>
    </div>
    <p class="footer-rights">© 2024 PT WinniCode Garuda Indonesia, All rights reserved</p>
</footer>


</body>
</html>