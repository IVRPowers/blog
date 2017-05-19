+++
categories = ["Tutorial"]
date = "2017-05-18T11:59:32+02:00"
description = "Cómo instalar y configurar el ordenador para escribir el blog"
tags = ["tutorial","installation"]
draft = false
title = "Instalación del Entorno"
featured = true

+++


## Prerrequisitos

Antes de empezar a crear contenido en el blog es necesario cumplir los siguientes pasos.

#### Tener **Git** instalado
- **Windows**: https://git-for-windows.github.io/
- **Linux**: desde el gestor de paquetes (`apt-get install git` | `yum install git-core`)
- **Mac**: desde Homebrew (`brew install git`)

#### Tener una cuenta de GitHub
1. Registrarse en [GitHub](https://github.com)
2. Formar parte de la organización IVRPowers (hablar con un administrador): [IVRPowers en GitHub](https://github.com/IVRPowers)
3. (Opcional) Configurar Git en nuestro ordenador para usar SSH en vez de clave de texto
4. Configurar nuestro ordenador para utilizar nuestra cuenta de GitHub (desde la consola/terminal)

~~~bash
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
~~~

#### Tener instalado el ejecutable de GoHugo
- Seguir las instrucciones oficiales de GoHugo: https://gohugo.io/overview/installing/

### Instalación del blog en el ordenador
- Abrir una consola e ir al directorio donde se quiere tener el proyecto (cambiar PATH_TO_DIR por la ruta al directorio mencionado)

~~~bash
$ cd PATH_TO_DIR
$ git clone --recursive https://github.com/IVRPowers/blogtest.git
# O si hemos configurado SSH: git@github.com:IVRPowers/blogtest.git
$ cd blogtest
$ git worktree add -B gh-pages public origin/gh-pages
$ chmod +x publish.sh
~~~
