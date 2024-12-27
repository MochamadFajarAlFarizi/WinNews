<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - WinNews</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .login-container {
            display: flex;
            height: 100vh;
        }
        .left-section {
            background: url('{{ asset('image/bglgn.png') }}') no-repeat center center/cover;
            color: #fff;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .left-section h1 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }
        .left-section p {
            font-size: 1.2rem;
            text-align: center;
        }
        .right-section {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #fff;
        }
        .form-container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .form-container h2 {
            margin-bottom: 1.5rem;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <!-- Left Section -->
        <div class="left-section">
            <h1>Selamat datang </h1>
            <h1>Admin WinNews!</h1>
            <p>Menangkap Berita Menginspirasi Dunia!</p>
        </div>

        <!-- Right Section -->
        <div class="right-section">
            <div class="form-container">
                <h2>Masuk</h2>
                <form action="{{ route('login') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="contoh@email.com" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Masukan Password" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Masuk</button>
                </form>

                @if (session('error'))
                    <div class="alert alert-danger mt-3">
                        {{ session('error') }}
                    </div>
                @endif
            </div>
        </div>
    </div>
</body>
</html>
