<html lang="pl">
<
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$pageTitle|default:"Strona główna"}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container-fluid text-center p-3">
        <div class="row">
            <h1>Nagłówek strony</h1>
        </div>
        <div class="row">
            <div class="col-6 offset-3">
                <form action="upload/" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="hidden" name="parent" value="{$post->id}">
                        <input type="file" name="file" id="" class="form-control mt-1" required>
                        <input type="textarea" name="content" class="form-control mt-1"
                            placeholder="Wpisz treść wiadomości" required>
                        <input type="submit" value="Wyślij" class="btn btn-primary w-100 mt-1">
                    </div>
                </form>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col">
                <div class="row bg-light text-start">
                    <div class="col-2">Post ID:{$post->id}</div>
                    <div class="col-2"><a href="">[Odpowiedz]</a></div>
                </div>
                <div class="row post mb-5" style="border: 1px solid black;">
                    <div class="col-2 img">
                        <img src="{$post->image}" alt="Obrazek" class="img-fluid">
                    </div>
                    <div class="col-10 content text-start">
                        {$post->content}
                    </div>
                    {foreach from=$post->comments item=comment key=key}
                        <div class="row mt-3">
                            <div class="col offset-1">
                                <div class="row bg-light text-start">
                                    <div class="col-2">Post ID:{$comment->id}</div>
                                    <div class="col-2"><a href="">[Odpowiedz]</a></div>
                                </div>
                                <div class="row post mb-5" style="border: 1px solid black;">
                                    <div class="col-2 img">
                                        <img src="{$comment->image}" alt="Obrazek" class="img-fluid">
                                    </div>
                                    <div class="col-10 content text-start">
                                        {$comment->content}
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
</body>

</html>