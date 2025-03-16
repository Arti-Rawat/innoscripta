<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News News</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .article { border-bottom: 1px solid #ddd; padding: 15px; }
        .article img { max-width: 20%; height: auto; }
        .pagination { margin-top: 10px; }
    </style>
</head>
<body>
    <h1><a href="{{ url('/')  }}">Home</a></h1>
    <h3>Latest News </h3>
    <div class="news-container">    
        <form method="GET" action="{{ url('/news') }}">
            <input type="text" name="search" placeholder="Search news..." value="{{ request('search') }}" required>
            <button type="submit">Search</button>
        </form>
    </div>

    <form method="GET" action="{{ url('/news')}}">
        <select name="category" onchange="this.form.submit()">
            <option value="">All Categories</option>
            @if(isset($categories))
            @foreach($categories as $category)
                <option value="{{ $category->category }}" {{ request('category') == $category->category ? 'selected' : '' }}>
                    {{ ucfirst($category->category) }}
                </option>
            @endforeach
            @endif
        </select>
    </form>

    <form method="GET" action="{{ url('/news')}}">
        <select name="source" onchange="this.form.submit()">
            <option value="">All Sources</option>
            @if(isset($sources))
            @foreach($sources as $source)
                <option value="{{ $source->source }}" {{ request('source') == $source->source ? 'selected' : '' }}>
                    {{ ucfirst($source->source) }}
                </option>
            @endforeach
            @endif
        </select>
    </form>
 
    <form method="GET" action="{{ url('/news')}}">
        <select name="author" onchange="this.form.submit()">
            <option value="">All Author</option>
            @if(isset($authors))
            @foreach($authors as $author)
                <option value="{{ $author->author }}" {{ request('author') == $author->author ? 'selected' : '' }}>
                    {{ ucfirst($author->author) }}
                </option>
            @endforeach
            @endif
        </select>
    </form>


    @if(isset($apiNews))

    @if ($errors->any())
            <p style="color: red;">{{ $errors->first() }}</p>
    @endif

    @foreach ($apiNews as $news)
        <div class="article">
            <h2>{{ $news['title'] }}</h2>
            <p><strong>By:</strong> {{ $news['author'] ?? 'Unknown' }}</p>
            <p>{{ $news['description'] }}</p>
            @if($news['urlToImage'])
                <img src="{{ $news['urlToImage'] }}" alt="Article Image">
            @endif
            <p><a href="{{ $news['url'] }}" target="_blank">Read more</a></p>
            <p><small>Published on: {{ \Carbon\Carbon::parse($news['published_at'])->format('M d, Y H:i A') }}</small></p>
        </div>
    @endforeach

    @else

    @foreach($news as $newsData)
        <div class="article">
            <h2>{{ $newsData->title }}</h2>
            <p><strong>By:</strong> {{ $newsData->author ?? 'Unknown' }}</p>
            <p>{{ $newsData->description }}</p>
            @if($newsData->urlToImage)
                <img src="{{ $newsData->urlToImage }}" alt="Article Image">
            @endif
            <p><a href="{{ $newsData->url }}" target="_blank">Read more</a></p>
            <p><small>Published on: {{ \Carbon\Carbon::parse($newsData->published_at)->format('M d, Y H:i A') }}</small></p>
        </div>
    @endforeach

    <div class="pagination">
        {{ $news->links() }}
    </div>

    @endif

{{-- --}}
</body>
</html>
