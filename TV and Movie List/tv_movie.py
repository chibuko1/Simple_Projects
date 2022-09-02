import json 
import string

#create a list of tv shows or movies and add them to a json file
# read json file in if possible to make sure there are no duplicates in show name

class tv_movie:
    def __init__(self, name, isMovie, season):
        self.name = name
        self.isMovie = isMovie
        if(isMovie): #movies do not have seasons
            self.season = 0
        else:
            self.season = season

    def convert(self): #convert the class into a dictionary
        dictionary = {
            "Name" : self.name,
            "Movie" : str(self.isMovie),
            "Seasons Watched" : self.season
        }
        return dictionary

def validate_season():
    while True:
        num = input("How many seasons have you seen: ")
        try:
            #convert length to int
            value = int(num)
            if value > 0:
                break
            #non integer answers
        except ValueError:
            print("You did not enter a number. Please enter a number \n")
    return value

exists = input("Do you already have a file containing the movies and tv shows you have seen?\n")
while exists.lower() != "yes" and exists.lower() != "no":
    exists = input("Do you already have a file containing the movies and tv shows you have seen?\n")

#list of tv shows and movies watched
tvm_list = []

file_path = "tv_movie_list.json"
# if the file exists it should be saved under the name tv_movie_list.json
if exists.lower() == "yes":
    with open(file_path, "r", encoding = 'utf-8') as f:
        tvm_list = json.load(f)

more = "yes"

while more.lower() != "no":
    # start building the list of movies and tv shows
    tvm_name = input("\nEnter the name of a movie or tv show you have seen: ").capitalize()
    tvm_movie = input("Is it a movie?  ")
    while tvm_movie.lower() != "yes" and tvm_movie.lower() != "no":
        tvm_movie = input("Is it a movie?  ")

    if tvm_movie == "no":
        tvm_season = validate_season()
        tvm_bool = False
    else:
        tvm_season = 0
        tvm_bool = True
    #create the new entry    
    new_tvm = tv_movie(tvm_name, tvm_bool, tvm_season)
    #add new entry to list of movies
    tvm_list.append(new_tvm.convert())
    more = input("Are there any more TV shows or Movies you would like to add? ")

with open(file_path, "w") as outfile:
    json.dump(tvm_list, outfile)

print("done")



