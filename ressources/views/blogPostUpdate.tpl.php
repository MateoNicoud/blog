<form action="http://blog.local/index.php?action=blogPostUpdate&id=<?php echo $gid ?>" method="post">
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