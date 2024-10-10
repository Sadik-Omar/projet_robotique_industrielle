# Projet Robotique Industrielle - ABB IRB4600

## Introduction

Ce projet consiste à simuler et à calculer les positions articulaires permettant de saisir, à l’aide d’une pince, des blocs situés dans l’espace de travail du robot ABB IRB4600. L'objectif est de modéliser la cinématique du robot, de calculer la matrice Jacobienne, et de simuler les trajectoires du robot lors de la manipulation des blocs.

## Objectifs

Les objectifs principaux du projet sont les suivants :
- Construire et valider le modèle géométrique direct (Denavit-Hartenberg) du robot ABB IRB4600.
- Calculer la matrice Jacobienne et valider numériquement cette matrice.
- Simuler des trajectoires pour saisir et déplacer des blocs dans l'espace de travail du robot.
- Évaluer la dextérité du robot et la précision de ses mouvements.
  
## Configuration initiale du robot

Le robot ABB IRB4600 est initialement configuré comme suit :
- θ₁ = 90°, θ₂ = θ₃ = θ₄ = θ₅ = 0°, θ₆ = 90°

Les tâches de manipulation à accomplir sont :
1. Saisir le bloc bleu et le déposer sur le jaune.
2. Saisir les deux blocs et les déposer sur le rouge.
3. Saisir les trois blocs et les déposer sur le bleu.
4. Retourner à la position initiale.

## Modèle géométrique direct

Le modèle géométrique direct du manipulateur sera basé sur la méthode de Denavit-Hartenberg. Les paramètres DH sont définis comme suit :
| Joint | Rotation (θᵢ) | Translation (dᵢ) | Translation (aᵢ) | Rotation (αᵢ) |
|-------|----------------|-------------------|------------------|---------------|
| 0 à 1 | θ₁             | 960               | 175              | 0°            |
| 1 à 2 | θ₂             | 0                 | 900              | 0°            |
| 2 à 3 | θ₃             | 0                 | 495              | 90°           |
| 3 à 4 | θ₄             | 135 + 233.37      | 0                | 90°           |
| 4 à 5 | θ₅             | 0                 | 0                | 0°            |
| 5 à 6 | θ₆             | 0                 | 0                | 0°            |

## Matrice Jacobienne

La matrice Jacobienne sera dérivée à partir du modèle géométrique direct et utilisée pour analyser la dextérité et la précision des mouvements du robot. Un algorithme sera implémenté pour obtenir les équations explicites de cette matrice.

## Simulation des trajectoires

Les trajectoires de manipulation des blocs seront simulées à partir d’un fichier `.trj` contenant les positions articulaires du robot, ainsi que l'état des pinces. Les blocs seront saisis et déplacés dans l'ordre suivant :
- Bloc bleu : (x, y, z) = (1500, 0, 0)
- Bloc jaune : (x, y, z) = (1400, 0, 500)
- Bloc rouge : (x, y, z) = (1500, 0, 500)

## Fichiers

- `position.trj` : Fichier contenant les positions articulaires et les états de la pince pour les différentes tâches de manipulation.
- `dh_parameters.txt` : Fichier contenant les paramètres Denavit-Hartenberg du robot.

## Validation

La validation sera effectuée en comparant les résultats des simulations numériques aux modèles théoriques. Les principaux critères d’évaluation seront :
- La précision des trajectoires du robot.
- La dextérité de la pince lors des manipulations.

## Résultats

Les résultats du projet incluront :
- Les équations du modèle géométrique direct et sa validation numérique.
- Les équations de la matrice Jacobienne et sa validation numérique.
- Un graphique des positions articulaires pour la simulation des trajectoires.

## Conclusion

Le projet permettra de comprendre les concepts de cinématique directe et inverse, ainsi que la manipulation d’objets à l’aide de robots industriels. La simulation de trajectoires permettra d’évaluer la précision et la dextérité du robot ABB IRB4600.
