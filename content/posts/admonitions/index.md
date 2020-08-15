---
title:  "Admonitions"
date: 2020-08-15T21:00:00+02:00
tags: [test,info]
featured_image: ""
images: 
description: "Une nouvelle fonctionnalité pour le blog !"
summary: "Une nouvelle fonctionnalité pour le blog !"
toc: false
---

# Salut !

Faisant régulièrement de la documentation technique avec mkdocs-material, un module que j'aime bien utiliser c'est [Admonitions](https://squidfunk.github.io/mkdocs-material/reference/admonitions/). Il permet de faire des encadrés plutôt sympas avec pas mal de paramètres.  
Malheureusement, Hugo ne permet pas de faire ça, et je n'ai pas trouvé de modules pour ajouter cette fonctionnalité.

> Il y a bien ces blocs de citations, mais ils sont quand-même assez basique.

Du coup, j'ai pris un peu de mon temps pour me faire un équivalent. Après deux petites journées, je suis finalement arrivé à un résultat qui me convient !

Voici l'encadré info (le plus simple) :

{{< info >}}
Bonjour, vous allez bien ?
{{< /info >}}

Sympa non ? et en plus il est facile à utiliser :

```
#La version de base, qui a plus de paramètres :
{{</* admonitions "Info" "dark-blue" */>}}
Bonjour, vous allez bien ?
{{</* /admonitions */>}}

#En mode simplifié :
{{</* info */>}}
Bonjour, vous allez bien ?
{{</* /info */>}}
```

Avec de la customisation :

{{< admonitions "Le rouge c'est trop bien !" "dark-red" >}}
On peut rajouter plein de choses dans l'encadré :

* des listes
* [des liens]()
* `du code`
* des images (voir plus bas)
{{< /admonitions >}}

On peut aussi juste mettre l'en-tête :

{{< admonitions "Vous êtes à la moitié de l'article !" "dark-green" />}}

Un encadré "Révélations" (je ne suis pas très fan de l'anglicisme "Spoiler") avec un système de contenu déroulant. Cliquez pour dérouler et découvrir une surprise !

{{< spoiler >}}
C'est à ce moment que l'on découvre qu'on peut aussi mettre des images !

![Image du premier post](../premier-post/DSC_0144.JPG "Vous la reconnaissez ? c'est l'image du premier article du site !")
{{< /spoiler >}}

Le titre est aussi personnalisable :

{{< spoiler "Révélations sur le prochain article" >}}
Je suis en train de l'écrire, il sortira lorsque je l'aurai terminé. `¯\_(ツ)_/¯`
{{< /spoiler >}}

Voilà, si vous êtes curieux, vous pouvez retrouver tout ça sur [Github](https://github.com/nlaurent9816/theBlogProject "les coulisses de ce blog !") où sont hébergées les sources du site. Il y aura peut-être encore quelques bidouilles à faire çà et là, mais le plus gros a déjà été fait.
Pour la partie "contenu déroulant", me suis inspiré du tuto de [w3cschools.com](https://www.w3schools.com/howto/howto_js_accordion.asp "Pleins de bonnes infos pour faire du HTML, CSS et JavaScript"), puis je l'ai adapté à mes besoins.

Sur ce, je vous laisse, je vais terminer mon prochain article, qui sera bien sur un jeu cette fois-ci. Ce sera l'occasion idéale pour utiliser tout ça !