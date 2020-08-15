---
title:  "Admonition"
date: 2020-08-15T20:00:00+02:00
tags: [test,info]
featured_image: ""
images: 
description: "De nouvelles fonctionnalités pour le blog !"
summary: "De nouvelles fonctionnalités pour le blog !"
draft: true
toc: false
---


L'encadré info :

{{< info >}}
Bonjour, vous allez bien ?
{{< /info >}}

Avec de la customisation :

{{< admonition "Le rouge c'est trop bien !" "dark-red" >}}
On peut rajouter plein de choses dans les détails :

* des listes
* [des liens]()
* des images (voir plus bas)
{{< /admonition >}}

Des encadrés "Spoiler" avec un système déroulant (appelé "accordéon")

{{< spoiler >}}
Voici la fameuse image :

![Image du premier post](../premier-post/DSC_0144.JPG)
{{< /spoiler >}}

Le titre est aussi personnalisable :

{{< spoiler "Révélations sur le prochain article" >}}
Je suis en train de l'écrire, il sortira lorsque je l'aurai terminé.
{{< /spoiler >}}
