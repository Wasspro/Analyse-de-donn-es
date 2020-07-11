# Lecture des packages nécessaires
library(FactoMineR)
library(explor)

# Répertoire du fichier
setwd("C:/Users/Wass/Desktop/Analyse de donnée/Projet")

# Lecture du fichier
projet<-read.csv(file="baseprojet.csv")

#Connaitre les dimensions de la base de données
dim(projet)

#On supprime les variables qualitatives
quali.sup=1:6

#Matrice de corrélation
cor(projet[-1,7:15])

#On effectue une AFC sur la matrice des corrélations
res.afc<-CA(projet[-1,7:15])

#On affiche dans explor
explor(res.afc)

#--------------------------------------------VP

#On calcul les VP ainsi que leurs sommes
vp<-res.afc$eig

#On ne conserve que les valeurs propres en valeur aboslue
vp[,1]

#On conserve les valeurs propres supérieur a la moyenne
vp[,1]>mean(vp[,1])

#On affiche de nouveau dans explor
explor(res.afc)

