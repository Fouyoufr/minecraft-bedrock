# minecraft-bedrock
Probablement la plus simple manière de faire tourner un serveur Minecraft (version Bedrock) dans un conteneur Docker.

Ce fichier Dockerfile télécharge l'application serveur Bedrock dans sa dernière version et l'installe ainsi que les dépendences nécessaires.

Pour les liens, il est conseillé de lier un répertoire de l'hote vers le répertoire **/MinecraftBDE/worlds**, afin d'y héberger votre/vos mondes et de mier le fichier server.properties vers **/MinecraftBDE/server.properties**.

Le port à présenter est le port 19132 en UDP
