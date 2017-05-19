+++
categories = ["Tutorial"]
date = "2017-05-19T10:51:22+02:00"
description = "Comandos básicos de uso de Git"
draft = false
tags = ["tutorial","git"]
title = "Usando Git"
image = "/postimages/git.png"

+++

**Git** es un software de control de versiones diseñado por Linus Torvalds, pensando en la eficiencia y la
confiabilidad del mantenimiento de versiones de aplicaciones cuando éstas tienen un gran número de archivos
de código fuente. Al principio, Git se pensó como un motor de bajo nivel sobre el cual otros pudieran escribir
la interfaz de usuario o front end como Cogito o StGIT. 3 Sin embargo, Git se ha convertido desde entonces en
un sistema de control de versiones con funcionalidad plena. 4 Hay algunos proyectos de mucha relevancia que
ya usan Git, en particular, el grupo de programación del núcleo Linux.

![Cómo usar Git](/postimages/git.png)

El blog usa **Git** para guardar los cambios en los posts que se vayan haciendo así cómo para publicar las nuevas
versiones del blog. Para la publicación prepararé un pequeño pograma de consola para que solo lo tengáis que ejecutar,
pero para lo que es guardar los cambios que se van haciendo tendréis que tener unas mínimas nociones sobre el uso de **Git**.
Necesitaréis conocer sobre todo las siguientes acciones:

- **status**: nos indica el estado actual de nuestra zona de trabajo
- **commit**: es la forma de guardar cambios
- **reset**: para deshacer cambios no guardados
- **pull/rebase**: para traer los cambios que un compañero pueda haber hecho a nuestra copia del repositorio
- **push**: para guardar los cambios que hayamos hecho en el servidor
- **fetch**: para comprobar si hay o no cambios de nuestros compañeros guardados en el servidor

Para aprender lo básico del uso de **Git** podéis seguir este tutorial: [Git Beginner's Guide for Dummies](https://backlogtool.com/git-guide/en/)
