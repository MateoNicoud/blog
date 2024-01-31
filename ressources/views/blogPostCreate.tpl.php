<form action="http://blog.local/index.php?action=blogPostCreate" method="post">
    <label for="title">titre
        <input type="text" name="title">
    </label>
    <label for="content">contenue
        <input type="text" name="content">
    </label>
    <label for="priority">note
        <input type="text" name="priority">
    </label>
    <label for="users_id">id
        <input type="text" name="users_id">
    </label>
    <button type="submit">Submit</button>
</form>
<!--blogPostCreate($title,$content,$priority,$users_id);--->