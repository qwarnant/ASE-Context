Binôme : WARNANT Quentin & DURIGNEUX Antoine
Date : 11/12/2014

Lors de l'éxécution de prodcons, un buffer de taille 100 est créé, ainsi que deux contextes : producer et consumer.
Le premier exécute une fonction de production d'objets et les place dans le buffer tandis que le second exécute 
une fonction consommateur qui consomme les éléments produits dans le buffer.

Ces deux fonctions sont encadrées par des sémaphores qui permet que le consommateur ne puisse pas consommer
un buffer empty d'objets et à l'inverse que le producteur ne puisse pas produire dans un buffer full.

Lors de l'exécution on voit clairement que le producteur produit des éléments pendant un temps (5s) d
avant d'être interrompu. Pendant ce temps, le consommateur attend car il est bloqué sur le sémaphore "full".
Lorsque le consommateur récupère la main, la buffer a été rempli par quelques objets, le consommateur peut donc s'exécuter
et consommer les objets fraichement produits par le producteur. 

On peut remarquer que comme le temps d'interruption est identique pour les deux contextes, le buffer ne pourra
jamais se remplir au maximum si on met un temps d'interruption court car le producteur ou le consommateur reprendront
la main directement l'un après l'autre.



