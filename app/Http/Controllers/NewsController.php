<?php

namespace App\Http\Controllers;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\News;
use Illuminate\Support\Facades\Http;

class NewsController extends Controller
{
    public function fetchAndStoreNews()
    {
        // Define API endpoints
        $api1 = 'https://newsapi.org/v2/top-headlines?language=en&apiKey=66f0d2224f7b4b6ea9ffc433dc855a03';
        $api2 = 'https://bbc-api.vercel.app/news?lang=english';
        $api3 = 'https://api.nytimes.com/svc/news/v3/content/all/all.json?api-key=';

        // Fetch data from API 1 : NewsAPI.org
        $response1 = Http::get($api1);
        if ($response1->successful()) {
            $data1 = $response1->json();
            $this->storeNewsFromApi1($data1);
        }

        // Fetch data from API 2 :BBC News
        $response2 = Http::get($api2);
        if ($response2->successful()) {
            $data2 = $response2->json();
            $this->storeNewsFromApi2($data2);
        } 
        
        // Fetch data from API 3 : New York Times
        $response3 = Http::get($api3);
        if ($response3->successful()) {
            $data3 = $response3->json();
            $this->storeNewsFromApi3($data3);
        } 

        return response()->json(['message' => 'News data stored successfully.']);
    }

    private function storeNewsFromApi1($data)
    { 
        if ($data['status'] === 'ok' && !empty($data['articles'])) {
            foreach ($data['articles'] as $article) {
                News::updateOrCreate(
                    ['url' => $article['url']],  // Prevent duplicate entries
                    [
                        'source'       => $article['source']['name'] ?? null, //'NewsAPI.org',
                        'category'     => 'General',
                        'author'       => $article['author'] ?? null,
                        'title'        => $article['title'] ?? null,
                        'description'  => $article['description'] ?? null,
                        'url'          => $article['url'],
                        'urlToImage'   => $article['urlToImage'] ?? null,
                        'published_at' => Carbon::parse($article['publishedAt'])->format('Y-m-d H:i:s') ?? null,
                        'content'      => $article['content'] ?? null,
                    ]
                );
            }
        }
    }

    private function storeNewsFromApi2($data)
    {
        if ($data['status'] === 200) { 
            // Ignore metadata fields
            $categories = array_filter($data, function ($key) {
                return !in_array($key, ['status', 'elapsed time', 'timestamp']);
            }, ARRAY_FILTER_USE_KEY);

            // Process each category
            foreach ($categories as $category => $articles) { 
                foreach ($articles as $article) { 
                    News::updateOrCreate(
                    ['url' => $article['news_link']], // Avoid duplicate entries
                    [
                        'source'       => 'BBC News',
                        'category'     => $category ?? null,
                        'author'       => $article['author'] ?? null,
                        'title'        => $article['title'] ?? null,
                        'description'  => $article['summary'] ?? null,
                        'url'          => $article['news_link'],
                        'urlToImage'   => $article['image_link'] ?? null,
                        'published_at' => now(),
                        'content'      => $article['content'] ?? null,
                    ]
                );
                }
            }

        }

    }

    private function storeNewsFromApi3($data)
    { 
       if ($data['status'] === 'OK' && !empty($data['results'])) { 
            foreach ($data['results'] as $result) {  
                News::updateOrCreate(
                    ['url' => $result['url']],  // Prevent duplicate entries
                    [
                        'source'       => $result['source'] ?? null,
                        'category'     => $result['section'] ?? null,
                        'author'       => $result['byline'] ?? null,
                        'title'        => $result['title'] ?? null,
                        'description'  => $result['abstract'] ?? null,
                        'url'          => $result['url'],
                        'urlToImage'   => $result['multimedia'][0]['url'] ?? null,
                        'published_at' => Carbon::parse($result['published_date'])->format('Y-m-d H:i:s') ?? null,
                        'content'      => $result['subsection'] ?? null,
                    ]
                );
            }
        } 
    }


    public function showNews()
    {
        // Fetch latest 10 articles
        $news = News::latest()->paginate(10);
        $categories = News::select('category')->distinct()->get();
        $sources = News::select(columns: 'source')->distinct()->get();
        $authors = News::where('author', 'NOT LIKE', '%,%')
                       ->where('author', '!=', '')->get();

        return view('news.index', compact('news','categories','sources','authors'));
    }


    public function showSearchNews(Request $request)
    {
        $categories = News::select(columns: 'category')->distinct()->get();
        $sources = News::select(columns: 'source')->distinct()->get();
        $authors = News::where('author', 'NOT LIKE', '%,%')
                       ->where('author', '!=', '')->get();

        $key = array_keys(request()->all()); 
        $value = array_values(request()->all());  
        $apiUrl = url('/api/news')."/$key[0]={$value[0]}"; 
        $response = Http::get($apiUrl);
        if ($response->successful()) {
            $newsData = $response->json();    
            $apiNews = $newsData['data'] ?? []; // Extract only the "data" array 
            // return view('news.index', ['apiNews' => $newsData['data'],'categories']);
            return view('news.index', compact('apiNews','categories','sources','authors'));
        }

        return view('news.index', ['apiNews' => []])->withErrors('Failed to fetch news.');
    }

}
