<?php
namespace App\Http\Controllers;

use App\Models\News;

class NewsController extends Controller
{
    public function index()
    {
        $news = News::all(); // Ambil semua berita
        return view('news', ['news' => $news]);
    }

    public function trending()
    {
        $trendingNews = News::orderBy('created_at', 'desc')->limit(5)->get();
        return view('trending', ['news' => $trendingNews]);
    }

    public function domestic()
    {
        $domesticNews = News::where('category_id', 2)->get(); // Contoh untuk kategori tertentu
        return view('domestic', ['news' => $domesticNews]);
    }

    public function show($id)
    {
        $news = News::findOrFail($id); // Ambil berita berdasarkan ID
        $latestNews = News::latest()->take(5)->get(); // Ambil 5 berita terbaru
    
        return view('detail', compact('news', 'latestNews'));
    }
    
}
