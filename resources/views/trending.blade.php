<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WinNews</title>
    <link rel="icon" type="image/png" href="{{ asset('image/logo.png') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    @vite('resources/css/app.css')
</head>
<body>
    <!-- Header -->
    <header class="custom-header">
        <div class="container-fluid d-flex justify-content-between align-items-center">
            <div class="d-flex align-items-center">
                <img src="image/News.png" alt="WinNews Logo" class="me-3">
            </div>
            <nav class="nav">
                <a class="deactive" href="{{ route('home') }}">Home</a>
                <a class="deactive" href="{{ route('news') }}">News</a>
                <a class="deactive" href="{{ route('domestic') }}">Domestic</a>
                <a class="active" href="{{ route('trending') }}">Trending</a>
            </nav>
            <form class="d-flex ms-3">
                <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search">
                <button class="btn btn-light" type="submit">
                    <i class="bi bi-search"></i>
                </button>
            </form>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container-fluid px-5 my-4" style="padding-top: 75px;">
        <!-- Daftar Berita -->
        <div class="row">
            <div class="col-12">
                <div class="list-group w-100">
                    @foreach ($news as $index => $item)
                    <div class="list-group-item d-flex justify-content-between align-items-center border rounded mb-3 p-3">
                        <div class="d-flex align-items-center">
                            <div class="me-3">
                                <a href="{{ route('detail', $item->id) }}" class="text-decoration-none text-dark">
                                    <span class="badge rounded-circle" style="font-size: 1.2rem; background-color: {{ $index == 0 ? 'gold' : ($index == 1 ? 'silver' : ($index == 2 ? '#cd7f32' : 'primary')) }};">
                                        {{ $index + 1 }}
                                    </span>
                                </a>
                            </div>
                            <div>
                                <p class="fw-bold mb-1">{{ $item->title }}</p>
                                <small class="text-muted">{{ $item->created_at->diffForHumans() }}</small>
                            </div>
                        </div>
                        <img src="{{ asset($item->image) }}" alt="{{ $item->title }}" class="ms-3" style="width: 80px; height: 80px;">
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="custom-footer" style="background: #D9D9D9; padding-top: 10px;">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <div class="col-md-5 d-flex align-items-center">
                    <img src="{{ asset('image/WinniCode.png') }}" alt="WinNews" class="me-3" style="width: 100%; height: auto;">
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
        <p class="text-center mt-3 bg-primary text-white">&copy; 2024 PT WinniCode Garuda Indonesia, All rights reserved</p>
    </footer>
</body>
</html>
