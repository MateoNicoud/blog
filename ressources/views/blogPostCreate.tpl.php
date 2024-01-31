<form action="http://blog.local/index.php?action=blogPostCreate" method="post">
    <h2>création post anonyme</h2>
    <br>
    <label for="title">titre
        <input type="text" name="title">
    </label>
    <label for="content">contenue
        <input type="text" name="content">
    </label>
    <label for="priority">note
        <input type="text" name="priority">
    </label>
    <button type="submit">Submit</button>
</form>
<!--blogPostCreate($title,$content,$priority,$users_id);--->