<html>
    <head>
        <title>App Name - @yield('title')</title>
    </head>
    <body>
        @section('sidebar')
            This is the master sidebar.
        @endsection

        <div class="container">
            @yield('content')
            <div id="app">
                <Nav></Nav>
                <App></App>
            </div>
        </div>
        
    </body>
</html>
<script src="js/app.js"></script>