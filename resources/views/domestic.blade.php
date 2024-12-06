<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WinNews</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Hubungkan file app.css -->
    @vite('resources/css/app.css')
</head>
    <body>
        <!-- header -->
    <header class="custom-header">
    <div class="container-fluid d-flex justify-content-between align-items-center">
        <!-- Logo -->
        <div class="d-flex align-items-center">
            <img src="image/News.png" alt="WinNews Logo" class="me-3">
        </div>
        
        <!-- Navigation Links -->
        <nav class="nav">
            <a class="deactive" href="{{ route('home') }}">Home</a>
            <a class="deactive" href="{{ route('news') }}">News</a>
            <a class="active" href="{{ route('domestic') }}">Domestic</a>
            <a class="deactive" href="{{ route('trending') }}">Trending</a>
        </nav>

        <!-- Search Bar -->
        <form class="d-flex ms-3">
            <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search">
            <button class="btn btn-light" type="submit">
                <i class="bi bi-search"></i>
            </button>
        </form>
    </div>
</header>


<main class="container my-4 custom-main">
    <!-- Main News Section -->
    <section class="row mb-4">
        <!-- Featured News -->
        <div class="col-md-12 mb-3">
            <div class="featured-news position-relative">
                <img src="image/berita1.jpeg" alt="Main News" class="img-fluid w-100">
                <div class="featured-caption position-absolute text-white p-3" style="bottom: 0; background: rgba(0, 0, 0, 0.5);">
                    <h5>Geledah Rumah, KPK Sita Uang Tunai Rp 2.4 M Terkait Kasus Investasi Fiktif</h5>
                </div>
            </div>
        </div>
        
        <!-- News Grid -->
        <div class="row g-3">
            <div class="col-md-3">
                <div class="card">
                    <img src="image/berita2.jpeg" class="card-img-top" alt="News 1">
                    <div class="card-body">
                        <p class="card-text">Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="image/berita3.jpeg" class="card-img-top" alt="News 2">
                    <div class="card-body">
                        <p class="card-text">Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="image/berita4.jpeg" class="card-img-top" alt="News 3">
                    <div class="card-body">
                        <p class="card-text">Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="image/berita5.jpeg" class="card-img-top" alt="News 4">
                    <div class="card-body">
                        <p class="card-text">Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="image/berita5.jpeg" class="card-img-top" alt="News 4">
                    <div class="card-body">
                        <p class="card-text">Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="image/berita5.jpeg" class="card-img-top" alt="News 4">
                    <div class="card-body">
                        <p class="card-text">Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="image/berita5.jpeg" class="card-img-top" alt="News 4">
                    <div class="card-body">
                        <p class="card-text">Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="image/berita5.jpeg" class="card-img-top" alt="News 4">
                    <div class="card-body">
                        <p class="card-text">Lorem ipsum dolor sit amet: Peran Inovasi Teknologi dalam Pendidikan Masa Kini</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

    <!-- Footer -->
    <footer class="custom-footer" style="background: #D9D9D9; padding-top: 10px;">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <div class="col-md-5 d-flex align-items-center">
                <img src="image/WinniCode.png" alt="WinNews" class="me-3" style="width: 100%; height: auto;">
                <h3 class="mb-0">WinniCode Garuda Teknologi</h3>
            </div>
            <div class="col-md-5 text-md-end">
                <h5>Contact Us:</h5>
                <p>
                    <a href="https://www.instagram.com/winnicodeofficial/" target="_blank" class="text-decoration-none text-dark">
                        <i class="bi bi-instagram me-2"></i>Instagram
                    </a>
                </p>
                <p>
                    <a href="https://winnicode.com/" target="_blank" class="text-decoration-none text-dark">
                        <i class="bi bi-globe me-2"></i>WinniCode
                    </a>
                </p>
                <p>
                    <a href="https://wa.me/6281234567890" target="_blank" class="text-decoration-none text-dark">
                        <i class="bi bi-whatsapp me-2"></i>WhatsApp
                    </a>
                </p>
            </div>
        </div>
    </div>
    
    <p class="text-center mt-3 bg-primary text-white">© 2024 PT WinniCode Garuda Indonesia, All rights reserved</p>
</footer>
</body>
</html>