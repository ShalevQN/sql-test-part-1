import sqlite3

conn = sqlite3.connect("sql-test-2-database.db")

while True:
    print("Choose an action:")
    print("1. Display all movies")
    print("2. Search for a movie by name")
    print("3. Add a movie")
    choice = input("Enter the number of the action: ")

    match choice:
        case "1":
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM movies")
            movies = cursor.fetchall()
            for movie in movies:
                print(movie)

        case "2":
            cursor = conn.cursor()
            search_term = input("Enter the name or part of the name of a movie: ")
            cursor.execute("SELECT * FROM movies WHERE movie_name LIKE ?", ('%' + search_term + '%',))
            movies = cursor.fetchall()
            if movies:
                for movie in movies:
                    print(movie)
            else:
                print("No movies found matching that name.")

        case "3":
            cursor = conn.cursor()
            movie_name = input("Enter the movie name: ")
            genre = input("Enter the genre of the movie: ")
            country = input("Enter the country of the movie: ")
            language = input("Enter the language of the movie: ")
            year = int(input("Enter the year of the movie: "))
            revenue = float(input("Enter the revenue of the movie: "))
            cursor.execute("""
            INSERT INTO movies (movie_name, genre, country, language, year, revenue)
            VALUES (?, ?, ?, ?, ?, ?)
            """, (movie_name, genre, country, language, year, revenue))
            conn.commit()
            print("The movie was added.")

        case "Exit" | "exit":
            break

        case _:
            print("****** Invalid choice, choose 1, 2 or 3.")

conn.close()
