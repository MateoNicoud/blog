```mermaid
graph TD
    A[Start] --> B[get all posts from database]
    B --> C{no blog post ?}
    C -- Yes --> D[display empty disclaimer]
    C -- No --> E[display blog post]
    E --> F{more blogpost?}
    F -- Yes --> E
    F -- No --> G[End]
```
```mermaid
sequenceDiagram
User->>index.php: ?action=
index.php->>homeController.php: include
homeController.php->>blogPostData.php: lastBlogPosts()
blogPostData.php->>PDO: prepare()
PDO-->>blogPostData.php: PDOStatement
blogPostData.php->>PDOStatement: execute()
PDOStatement-->>blogPostData.php: isSuccess
blogPostData.php->>PDOStatement: fetchAll()
PDOStatement-->>blogPostData.php: blogPosts
blogPostData.php-->>homeController.php: blogPosts
homeController.php->>home.tpl.php: blogPosts
home.tpl.php-->>User: display blogPosts
User->>blogPostCreateController: verification POST
blogPostCreateController->>blogPostCreate.tpl.php:interface form
blogPostCreate.tpl.php->>blogPostCreateController: create post
blogPostCreateController->>PDO:insert new post
```
# afficher un article
```mermaid
flowchart TD
    A[START] -->B(Display tile)
    B --> C(Display dateFrom)
    C -->D(Display content)
    D -->E(Display nickname)
    E -->F(Display comment nickname)
    F-->G(Display comment content)
    G-->H(Display comment addTime)
    H-->I(END)
```
```mermaid
flowchart TD
A[index.pjp] -->B{Si POST id exist &&  GET action == blog}
B -->|True|C[include blogPostController]
B -->|False| D[Normal fontController]
C -->E[include include homeController.php]
E-->F[success = false]
F -->Ga{i< array.length ?}
Ga -->|faux|G{$_post id == id i }
G --> H[include in views id i .php]
H -->I[success = true]
I -->J[END]
D-->J
```
#modifier un posts
```mermaid
sequenceDiagram
User->>index.php: ?action=
index.php->>homeController.php: include
homeController.php->>blogPostData.php: lastBlogPosts()
blogPostData.php->>PDO: prepare()
PDO-->>blogPostData.php: PDOStatement
blogPostData.php->>PDOStatement: execute()
PDOStatement-->>blogPostData.php: isSuccess
blogPostData.php->>PDOStatement: fetchAll()
PDOStatement-->>blogPostData.php: blogPosts
blogPostData.php-->>homeController.php: blogPosts
homeController.php->>home.tpl.php: blogPosts
home.tpl.php-->>User: display blogPosts
User->>blogPostModifyController: verification POST
blogPostModifyController->>blogPostModify.tpl.php:interface form
blogPostModify.tpl.php->>blogPostModifyController: create post
blogPostModifyController->>PDO:insert new post
```
# DELETE un post
```mermaid
sequenceDiagram
User->>index.php: ?action=
index.php->>homeController.php: include
homeController.php->>blogPostData.php: lastBlogPosts()
blogPostData.php->>PDO: prepare()
PDO-->>blogPostData.php: PDOStatement
blogPostData.php->>PDOStatement: execute()
PDOStatement-->>blogPostData.php: isSuccess
blogPostData.php->>PDOStatement: fetchAll()
PDOStatement-->>blogPostData.php: blogPosts
blogPostData.php-->>homeController.php: blogPosts
homeController.php->>home.tpl.php: blogPosts
home.tpl.php-->>User: display blogPosts
User->>blogPostDeleteController: post to delete
blogPostDeleteController->>PDO:Delete post
PDO-->>index.php:return to index
```