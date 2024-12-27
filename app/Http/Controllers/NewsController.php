<?php
namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Category; 
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        $news = News::with('author', 'category')->paginate(10); // Muat relasi author dan category
        $categories = Category::all(); // Ambil semua kategori
        return view('admin.news.index', compact('news', 'categories'));
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
    public function news()
    {
        $news = News::with('author', 'category')->paginate(10); // Muat relasi author dan category
        $categories = Category::all(); // Ambil semua kategori
        return view('news', compact('news', 'categories'));
    }

    public function search(Request $request)
    {
        $keyword = $request->input('q'); // Ambil kata kunci dari input form
        $news = News::where('title', 'LIKE', "%$keyword%")
            ->orWhere('content', 'LIKE', "%$keyword%")
            ->paginate(10);

        return view('search', compact('news', 'keyword'));
    }

}
