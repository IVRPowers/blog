+++
categories = ["Tutorial"]
date = "2017-05-22T13:30:27+02:00"
description = "Pequeño tutorial de cómo crear y publicar posts en el blog"
draft = true
tags = ["tutorials","gohugo"]
title = "Aprendiendo a usar GoHugo"
image = "/postimages/tutorials/using-hugo/hugo.jpg"
featured = true

+++

En este post vamos a aprender cómo crear un post en el blog y cómo publicarlo. Antes de empezar a escribir un nuevo post
lo que haremos será levantar un pequeño servidor en nuestro ordenador que irá refrescando los cambios que vayamos haciendo a
los ficheros según los vayamos guardando. Para ello abriremos una consola y ejecutaremos lo siguiente:

```bash
$ cd PATH_TO_BLOG_DIR        # Ruta al directorio donde tengamos el blog
$ hugo server --buildDrafts
```

Una vez ejecutado el comando, abriremos en una navegador la url siguiente: [http://localhost:1313](http://localhost:1313).
Si todo ha ido bien deberíamos ver en el navegador la _landing page_ nuestro blog.

![Success Server](/postimages/tutorials/using-hugo/success-server.png)

### Creación de un post {#creacion-de-un-post}

Lo primero será, desde una consola abierta en el directorio donde hemos instalado el blog, ejecutar lo siguiente:

```bash
hugo new post/tutorials/using-hugo.md
```

Lo que hace el comando que acabamos de ejecutar es crear, a partir de un template, la base del nuevo post. Lo que nos pide
es indicar el _namespace_ de nuestro nuevo post. En este caso, cómo va a ser un tutorial, pues lo metemos en el _namespace_
**tutorials** dentro de **post**, este _namespace_ a efectos prácticos solo nos sirve para tener bien organizado el blog por
eso es buena idea tener todos los posts siempre bien ordenados. Una vez ejecutado el comando veremos que se nos ha creado
un nuevo fichero, llamado **using-hugo.md** en la carpeta `content/post/tutorials`. Este fichero contiene unas pocas variables
que parten de un template base.

```toml
+++
categories = ["z","w"]
date = "2017-05-22T09:59:35+02:00"
description = "insert post description here"
draft = true
tags = ["x","y"]
title = "using hugo"

+++
```

![New Post](/postimages/tutorials/using-hugo/new-post.png)

Una vez ejecutado el comando, veremos también que en la _landing page_ del blog ha aparecido un nuevo post. Si nos fijamos
bien, podemos ver que el título y subtítulo son los que aparecen en la configuración básica del post. Entonces, lo primero
que vamos a hacer va a ser completar correctamente las configuraciones de nuestro nuevo post. Para ello, vamos a editar el
fichero que hemos creado para que quede tal que así.

```toml
+++
categories = ["Tutorial"]
date = "2017-05-22T09:59:35+02:00"
description = "Pequeño tutorial de cómo crear y publicar posts en el blog"
draft = true
tags = ["tutorials","gohugo"]
title = "Aprendiendo a usar GoHugo"

+++
```

Una vez guardemos los cambios hechos al fichero, veremos que nuestro navegador se refresca y veremos ya reflejados los cambios
que acabamos de hacer.

![Default Card Post](/postimages/tutorials/using-hugo/default-post-card.png)

### Configuración de la ficha del post {#configuracion-ficha-post}

#### Añadiendo una imagen de portada

**GoHugo** por defecto nos creará una ficha de post en blanco y sin imagen, tal y cómo podemos ver en la imagen anterior.
Si queremos añadir una imagen a la ficha, lo primero que tendremos que hacer será añadir la imagen a la carpeta `static/postimages`.
(Yo recomiendo ordenarlas en los mismos _namespaces_ que los posts, así pues la pondríamos en la carpeta `static/postimages/tutorials/using-hugo`).
Una vez la hayamos añadido tendremos que indicarle a **GoHugo** que la cargue. Para ello editaremos las configuraciones del post y añadiremos
lo siguiente:

```toml
...
image = "/postimages/tutorials/using-hugo/hugo.jpg"

+++
```

Cuando el navegador recarge, previo guardado del fichero, veremos cómo ahora la ficha de nuestro nuevo post incluye la
imagen que hemos especificado.

![Post Card with Picture](/postimages/tutorials/using-hugo/post-card-with-picture.png)

#### Destacando un post

Si queremos que el nuevo post resalte entre el resto de posts, ya sea porque es una noticia, un dato importante,
o cualquier otro motivo, podemos hacer que **GoHugo** lo coloree con un color más oscuro (esto sólo afecta a la ficha
del post, no al post _per se_). Este lo conseguiremos añadiendo a la configuración del post la siguiente línea:

```toml
...
featured = true

+++
```

Cómo podemos ver en la siguiente imagen, una vez guardados los cambios, **GoHugo** habrá coloreado de un gris azulado
la ficha del post y habrá añadido una estrellita en la esquina superior de ésta.

![Featured Post Card](/postimages/tutorials/using-hugo/featured-post-card.png)

#### Dando prioridad al post

Por defecto, **GoHugo** ordena los posts en orden de creación pero nos permite añadir diferentes pesos a los posts para
que aparezcan antes si así lo preferimos. Para ello es necesario añadir el parámetro **weight** a la configuración del post
asignándole un valor númerico, cuando mayor sea el valor, mayor será la prioridad y por tanto antes aparecerá en la lista.

```toml
...
weight = 100

+++
```

### Añadir contenido al post {#añadir-contenido}

Una vez hayamos terminado la configuración del post será momento de añadirle contenido. Para ello basta con escribir, en
Markdown ([Cómo usar Markdown]({{< ref "markdown.md">}})), lo que queramos publicar a continuación del último grupo de `+++`
del bloque de configuración.

### Publicando el post {#publicando-el-post}

Finalmente, cuando hayamos terminado nuestro post, lo que tenemos que hacer es indicarle a **GoHugo** que ya no es un borrador.
Para ello, primero detendremos el servidor que habíamos lanzando en el primer paso, pulsando `Ctrl+C` en la ventana de la consola.
A continuación le diremos a **GoHugo** que marque el post cómo que no es borrador y correremos de nuevo el servidor, solo que
esta vez no le pediremos que nos muestre borradores. En este punto tendremos una visión de cómo se verá el blog cuando lo publiquemos.

```bash
$ hugo undraft content/post/tutorials/using-hugo.md
$ hugo server
```

Una vez que estemos conformes con el _look_ del blog es momento de guardar los cambios. Para ello, desde una consola en
el directorio del blog, ejecutaremos lo siguiente:

```bash
$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)

        content/post/tutorials/using-hugo.md
        static/postimages/tutorials/

nothing added to commit but untracked files present (use "git add" to track)
```

Vemos que el comando `git status` nos indica que hay un fichero nuevo (nuestro post) y luego una ruta a una carpeta, que
es la carpeta donde hemos metido las imágenes del blog. Lo siguiente será (con el comando `git add`) marcar esos
contenidos para que sean guardados:

```bash
$ git add content/post/tutorials/using-hugo.md static/postimages/tutorials/
```

Si ahora volvemos a ejecutar el comando `git status` vemos que **git** ya ha marcado los ficheros para que sean guardados.

```bash
$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        new file:   content/post/tutorials/using-hugo.md
        new file:   static/postimages/tutorials/using-hugo/default-post-card.png
        new file:   static/postimages/tutorials/using-hugo/featured-post-card.png
        new file:   static/postimages/tutorials/using-hugo/hugo.jpg
        new file:   static/postimages/tutorials/using-hugo/new-post.png
        new file:   static/postimages/tutorials/using-hugo/post-card-with-picture.png
        new file:   static/postimages/tutorials/using-hugo/success-server.png
```

A continuación tenemos que guardarlos, para ello se usa el comando `git commit` especificando el mensaje de guardado.

```bash
$ git commit -m "Added a post with a tutorial on using GoHugo"
[master ffc56cb] Added a post with a tutorial on using GoHugo
 7 files changed, 170 insertions(+)
 create mode 100644 content/post/tutorials/using-hugo.md
 create mode 100644 static/postimages/tutorials/using-hugo/default-post-card.png
 create mode 100644 static/postimages/tutorials/using-hugo/featured-post-card.png
 create mode 100644 static/postimages/tutorials/using-hugo/hugo.jpg
 create mode 100644 static/postimages/tutorials/using-hugo/new-post.png
 create mode 100644 static/postimages/tutorials/using-hugo/post-card-with-picture.png
 create mode 100644 static/postimages/tutorials/using-hugo/success-server.png
```

El siguiente paso será guardar los cambios en el servidor, usaremos el comando `git push` para ello, pero primero tenemos
que comprobar que ningún compañero haya guardado algo en el servidor mientras nosotros hemos estado creando el nuevo post.
Por ello ejecutaremos primero el comando `git fetch`, si no devuelve nada será que estamos listos para guardar nuestros
cambios en el servidor, si en cambio devuelve algo, tendremos que traernos los cambios de nuestros compañeros primero
mediante el comando `git rebase`. Tras estas comprobaciones estaremos listos para subir el nuevo post al servidor.

```bash
$ git push origin master
Counting objects: 16, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (14/14), done.
Writing objects: 100% (16/16), 1.72 MiB | 602.00 KiB/s, done.
Total 16 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To github.com:IVRPowers/blogtest.git
   f6250b8..ffc56cb  master -> master
```

Finalmente, una vez hemos guardado los cambios, sólo necesitaremos ejecutar el script **publish.sh**, que se encuentra en
el directorio del blog, para subir las nuevas publicaciones al blog.

```bash
$ ./publish.sh
Deploying updates to GitHub...
```

Una vez ejecutado este último comando, podremos ir a la URL del blog y ver los nuevos cambios: http://blog.test.ivrpowers.com