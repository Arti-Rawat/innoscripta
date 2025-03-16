<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class NewsController extends Controller
{
    public function search(Request $request)
    { 
        // Get the last segment after the last '/'
        $lastSegment = last(explode('/', $request->path()));
        // Split the segment into an array
        $data = explode('=', $lastSegment);
        $key = $data[0];
        $value = $data[1]; 
        $value = urldecode($value);

        $query = News::query(); 

        // Search Query
        if (strpos($request->path(), 'search') !== false) {
            $query->where('title', 'like', '%' . $value . '%')
                  ->orWhere('content', 'like', '%' . $value . '%');
        }

        if (strpos($request->path(), 'category') !== false) {
            $query->where('category', $value)
                  ->orderBy('published_at', 'desc'); 
        }

        if (strpos($request->path(), 'source') !== false) {
            $query->where('source', $value);  
        }

        if (strpos($request->path(), 'author') !== false) {
            $query->where('author', $value); 
        }
         
        return response()->json($query->paginate(100));
    }

        // Get all news
        public function index()
        {
            return response()->json(News::all());
        }
    
        // Get single news by ID
        public function show($id)
        {
            $news = News::find($id);
            if (!$news) {
                return response()->json(['message' => 'News not found'], 404);
            }
            return response()->json($news);
        }
    
        // Create news
        public function store(Request $request)
        {
            $validated = $request->validate([
                'title' => 'required|string|max:255',
                'description' => 'required',
                'urlToImage' => 'nullable|string',
                'source' => 'nullable|string',
            ]);
    
            $news = News::create($validated);
            return response()->json($news, 201);
        }
    
        // Update news
        public function update(Request $request, $id)
        {
            $news = News::find($id);
            if (!$news) {
                return response()->json(['message' => 'News not found'], 404);
            }
    
            $validated = $request->validate([
                'title' => 'sometimes|required|string|max:255',
                'description' => 'sometimes|required',
                'urlToImage' => 'nullable|string',
                'source' => 'nullable|string',
            ]);
    
            $news->update($validated);
            return response()->json($news);
        }
    
        // Delete news
        public function destroy($id)
        {
            $news = News::find($id);
            if (!$news) {
                return response()->json(['message' => 'News not found'], 404);
            }
    
            $news->delete();
            return response()->json(['message' => 'News deleted successfully']);
        }
}
