# Roadmap d'Apprentissage de Ruby

## Introduction
Cette roadmap est conçue pour apprendre Ruby de manière progressive à travers des exercices thématiques organisés par difficulté croissante. Chaque exercice inclut des spécifications détaillées sur les entrées, les sorties, les résultats attendus, et les fonctionnalités clés. À la fin, des concepts avancés, comme les WebSockets et la concurrence, permettront de créer des applications telles qu'un jeu multijoueur.

---

## **Thème 1 : Les Bases**
**Objectif :** Apprendre les concepts fondamentaux de Ruby comme les variables, les boucles, les conditions, et les fonctions.

### Exercices

1. **Hello, Ruby!**
   - **Entrée :** Aucun.
   - **Sortie :** Affiche la chaîne "Hello, Ruby!" dans la console.
   - **Exemple attendu :**
     ```ruby
     Hello, Ruby!
     ```

2. **Factoriel**
   - **Entrée :** Un entier positif `n`.
   - **Sortie :** Le factoriel de `n`.
   - **Exemple :**
     ```ruby
     factoriel(5) # => 120
     ```

3. **Fibonacci**
   - **Entrée :** Un entier positif `n`.
   - **Sortie :** Le `n`-ième terme de la suite de Fibonacci.
   - **Exemple :**
     ```ruby
     fibonacci(7) # => 13
     ```

4. **Nombres Premiers**
   - **Entrée :** Un entier positif `n`.
   - **Sortie :** `true` si `n` est premier, sinon `false`.
   - **Exemple :**
     ```ruby
     est_premier(11) # => true
     est_premier(10) # => false
     ```

5. **ROT13**
   - **Entrée :** Une chaîne de caractères.
   - **Sortie :** La chaîne encodée en ROT13.
   - **Exemple :**
     ```ruby
     rot13("hello") # => "uryyb"
     ```

6. **Multiples de 3 et 5**
   - **Entrée :** Un entier positif `n`.
   - **Sortie :** La somme de tous les multiples de 3 ou 5 inférieurs à `n`.
   - **Exemple :**
     ```ruby
     somme_multiples(10) # => 23
     ```

7. **Inverser une chaîne de caractères**
   - **Entrée :** Une chaîne de caractères.
   - **Sortie :** La chaîne inversée.
   - **Exemple :**
     ```ruby
     inverser("ruby") # => "ybur"
     ```

8. **Compter les occurrences d’un caractère**
   - **Entrée :** Une chaîne et un caractère.
   - **Sortie :** Le nombre d’occurrences du caractère dans la chaîne.
   - **Exemple :**
     ```ruby
     compter("ruby", "u") # => 1
     ```

9. **Palindrome**
   - **Entrée :** Une chaîne de caractères.
   - **Sortie :** `true` si la chaîne est un palindrome, sinon `false`.
   - **Exemple :**
     ```ruby
     palindrome?("radar") # => true
     palindrome?("hello") # => false
     ```

---

## **Thème 2 : File System**
**Objectif :** Manipuler des fichiers et des répertoires en Ruby.

### Exercices

1. **Lire un fichier texte**
   - **Entrée :** Un chemin de fichier.
   - **Sortie :** Le nombre de mots et de lignes dans le fichier.
   - **Exemple :**
     ```ruby
     lire_fichier("example.txt")
     # => "10 mots, 2 lignes"
     ```

2. **Écrire dans un fichier**
   - **Entrée :** Une chaîne de texte.
   - **Sortie :** Ajoute le texte à un fichier nommé `journal.txt`.
   - **Spécification supplémentaire :** Ajouter une date et une heure à chaque entrée.

3. **Lister un répertoire**
   - **Entrée :** Un chemin de répertoire.
   - **Sortie :** La liste des fichiers et dossiers.

4. **Recherche dans des fichiers**
   - **Entrée :** Un mot clé et un répertoire.
   - **Sortie :** Les fichiers contenant ce mot clé.

---

## **Thème 3 : Programmation Orientée Objet (POO)**
**Objectif :** Comprendre et appliquer les principes de la POO avec Ruby.

### Exercices

1. **Création de classes et d'objets**
   - **Spécification :** Créez une classe `Personne` avec les attributs `nom` et `âge`. Ajoutez une méthode `parler` qui renvoie une chaîne comme : "Bonjour, je suis [nom]."
   - **Exemple :**
     ```ruby
     personne = Personne.new("Alice", 30)
     personne.parler
     # => "Bonjour, je suis Alice."
     ```

2. **Héritage**
   - **Spécification :** Créez une classe `Animal` avec une méthode `parler`. Faites hériter deux sous-classes (`Chien` et `Chat`) et redéfinissez la méthode `parler`.
   - **Exemple :**
     ```ruby
     chien = Chien.new
     chien.parler
     # => "Wouf !"

     chat = Chat.new
     chat.parler
     # => "Miaou !"
     ```

3. **Encapsulation**
   - **Spécification :** Implémentez des getters et setters pour une classe `CompteBancaire` avec un attribut `solde`. Empêchez l'accès direct au solde.
   - **Exemple :**
     ```ruby
     compte = CompteBancaire.new(1000)
     compte.solde
     # => 1000

     compte.deposer(500)
     compte.solde
     # => 1500
     ```

4. **Polymorphisme**
   - **Spécification :** Créez une méthode générique `se_deplacer` pour des classes `Voiture`, `Avion` et `Bateau`. Implémentez des comportements spécifiques pour chaque classe.
   - **Exemple :**
     ```ruby
     vehicule = Voiture.new
     vehicule.se_deplacer
     # => "La voiture roule sur la route."

     avion = Avion.new
     avion.se_deplacer
     # => "L'avion vole dans le ciel."
     ```

---

## **Thème 4 : Programmation asynchrone**
**Objectif :** Manipuler les threads et apprendre à gérer les tâches en parallèle.

### Exercices

1. **Threads simples**
   - **Spécification :** Créez un thread pour calculer la somme des nombres d'un tableau pendant qu'un autre thread affiche un message de progression.
   - **Exemple :**
     ```ruby
     calcul_thread = Thread.new { somme([1, 2, 3, 4, 5]) }
     progress_thread = Thread.new { afficher_progression }

     calcul_thread.join
     progress_thread.join
     ```

2. **Mutex pour éviter les conflits**
   - **Spécification :** Utilisez un mutex pour synchroniser l'accès à une variable partagée entre deux threads.
   - **Exemple :**
     ```ruby
     mutex = Mutex.new
     compteur = 0

     threads = 10.times.map do
       Thread.new do
         mutex.synchronize { compteur += 1 }
       end
     end

     threads.each(&:join)
     puts compteur
     # => 10
     ```

3. **Timers asynchrones**
   - **Spécification :** Implémentez un système où une tâche est exécutée toutes les secondes sans bloquer le programme principal.
   - **Exemple :**
     ```ruby
     Thread.new do
       loop do
         puts "Tâche exécutée"
         sleep 1
       end
     end

     puts "Programme principal actif"
     sleep 5
     ```

---

## **Thème 5 : Serveur Web**
**Objectif :** Comprendre comment créer un serveur simple et interagir avec les clients.

### Exercices

1. **Serveur TCP simple**
   - **Spécification :** Implémentez un serveur TCP qui accepte les connexions et répond à chaque message envoyé par un client.
   - **Exemple :**
     ```ruby
     serveur = TCPServer.new(3000)
     loop do
       client = serveur.accept
       message = client.gets
       client.puts "Reçu : #{message}"
       client.close
     end
     ```

2. **Serveur WebSocket**
   - **Spécification :** Implémentez un serveur WebSocket qui permet à plusieurs clients de se connecter et de recevoir des messages diffusés par le serveur.
   - **Exemple :**
     ```ruby
     # Les clients connectés reçoivent un message de diffusion.
     ```

3. **Serveur HTTP basique**
   - **Spécification :** Créez un serveur HTTP qui répond aux requêtes GET avec un contenu HTML simple.
   - **Exemple :**
     ```ruby
     serveur = TCPServer.new(8080)
     loop do
       client = serveur.accept
       request = client.gets
       client.puts "HTTP/1.1 200 OK\r\n\r\n<html><body><h1>Bonjour, monde!</h1></body></html>"
       client.close
     end
     ```

---

## **Thème 6 : Base de Données**
**Objectif :** Maîtriser l’interaction avec des bases de données relationnelles.

### Exercices

1. **Gestion de contacts**
   - **Entrée :** CRUD pour une base de données SQLite.
   - **Sortie :** Ajout, modification et suppression de contacts.

2. **Fusionner deux hashs**
   - **Entrée :** Deux hashs.
   - **Sortie :** Un hash fusionné.
   - **Exemple :**
     ```ruby
     fusionner({a: 1, b: 2}, {b: 3, c: 4}) # => {a: 1, b: 3, c: 4}
     ```

---

## **Thème 7 : Concurrence et Parallélisme**
**Objectif :** Créer des applications réactives et performantes avec Ruby.

### Exercices

1. **Serveur de jeu multijoueur**
   - **Entrée :** Plusieurs joueurs connectés via WebSocket.
   - **Sortie :** Gestion des mouvements en temps réel.

2. **Simulation concurrente**
   - **Entrée :** Joueurs exécutant des actions en parallèle.
   - **Sortie :** Synchronisation et mise à jour des états.

3. **Téléchargements parallèles**
   - **Entrée :** Une liste d’URLs.
   - **Sortie :** Télécharger plusieurs fichiers simultanément.

4. **Calcul distribué**
   - **Entrée :** Un grand tableau de nombres.
   - **Sortie :** Calculer la somme en utilisant plusieurs threads.

---

## **Thème 8 : Projets Finaux**
**Objectif :** Mettre en œuvre tout ce qui a été appris dans un projet complexe.

### Projets

1. **Jeu multijoueur simple**
   - **Fonctionnalités :**
     - Serveur WebSocket pour synchroniser les joueurs.
     - Gestion d’une grille partagée.
     - Scores mis à jour en temps réel.

2. **Plateforme de blog avec API**
   - **Fonctionnalités :**
     - CRUD pour les articles.
     - Gestion des utilisateurs (authentification et autorisation).
     - API RESTful pour interagir avec le contenu.

3. **Application de gestion de tâches**
   - **Fonctionnalités :**
     - Interface utilisateur en ligne de commande ou interface web.
     - Gestion de tâches avec catégories et priorités.
     - Notifications pour les échéances proches.

4. **Analyseur de logs**
   - **Fonctionnalités :**
     - Analyse de fichiers de logs pour extraire des informations (ex. erreurs, statistiques).
     - Visualisation des données sous forme de graphiques simples.

---

## **Ressources Supplémentaires**
1. [Documentation officielle de Ruby](https://www.ruby-lang.org/fr/documentation/)
2. [Ruby on Rails Guides](https://guides.rubyonrails.org/)
3. [RubyMonk - Exercices interactifs](https://rubymonk.com/)
4. [Codecademy Ruby Course](https://www.codecademy.com/learn/learn-ruby)
5. [The Well-Grounded Rubyist (Livre)](https://www.manning.com/books/the-well-grounded-rubyist)
