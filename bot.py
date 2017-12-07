#Moenika Chowdhury
#twitter: https://twitter.com/complimentphish

import random 
import twitter 			

consumerKey = "c9HhoCEBJzLMe6eLxWit4JArF"
consumerSecret = "y9mDnetnjrKnRA7a9vX35Gidlp6b2UaGLy5gnb6JTCwz1YJlT5"
accessTokenKey = "925499936690638848-CXV1AWFLXdI7D8psnuGz9UPl4hOresS"
accessTokenSecret = "fRkBxgXN1gB1KGzGqBFhfQTjAc8xJ6oh2DKoj3gO68YU5"

positive_adjectives = []
with open('positive_adjectives.txt') as word_file:
	for line in word_file:
		word = line.strip()
		positive_adjectives.append(word)

positive_nouns = [];
with open('positive_nouns.txt') as word_file:
	for line in word_file:
		word = line.strip()
		positive_nouns.append(word)

positive_verbs = [];
with open('positive_verbs.txt') as word_file:
	for line in word_file:
		word = line.strip()
		positive_verbs.append(word)

places = [];
with open('places.txt') as word_file:
	for line in word_file:
		word = line.strip()
		places.append(word)

proper_nouns = [];
with open('proper_nouns.txt') as word_file:
	for line in word_file:
		word = line.strip()
		proper_nouns.append(word)


positive_verb1 = random.choice(positive_verbs)
positive_noun1 = random.choice(positive_nouns)
positive_adjective1 = random.choice(positive_adjectives)
place1 = random.choice(places)
proper_noun1 = random.choice(proper_nouns)

positive_verb2 = random.choice(positive_verbs)
positive_noun2 = random.choice(positive_nouns)
positive_adjective2 = random.choice(positive_adjectives)
place2 = random.choice(places)
proper_noun2 = random.choice(proper_nouns)


# format the tweet
compliment1 = 'Your ' + positive_adjective1.lower() +  " " + positive_noun1.lower() + ' is inspiring to all who ' + positive_verb1.lower() + ' it.'
print compliment1

compliment2 = "You're even more " + positive_adjective1.lower() +  " " + positive_noun1.lower() + " on the inside than you are " + positive_adjective2.lower() + " on the outside."
print compliment2

compliment3 = "I love the way your " + positive_adjective2.lower() +  " " + positive_noun2.lower() +  "s "  + positive_verb2.lower() + " up the room."
print compliment3

compliment4 = "Believe in yourself because your " + positive_adjective1.lower() + " " + positive_noun1.lower() + " might change " + place1 + " one day."
print compliment4

compliment5 = "Never underestimate the power of " + positive_adjective1.lower() + " " + positive_noun1.lower() + " and a little luck."
print compliment5

compliment6 = "Hey " + proper_noun1 + ", don't forget how " + positive_adjective2.lower() + " your " + positive_noun1.lower() + " is!"
print compliment6

compliment7 = "Never give up " + proper_noun1 + ", because somewhere in " + place2 + " " + proper_noun2 + " believes in you!"
print compliment7

compliment8 = "One day your " + positive_adjective1.lower() + " " + positive_noun1.lower() + " will change " + proper_noun1 + "'s life in " + place2 + "."
print compliment8

compliment9 = "Everyday your " + positive_adjective1.lower() + " " + positive_noun1.lower() + " celebrates " + proper_noun2 + " in " + place2 + " and makes their day!"
print compliment9

compliment10 = "Hey " + proper_noun1 + ", did you know " + proper_noun2 + " loves your " + positive_adjective1 + " " + positive_noun1.lower() + "?"
print compliment10

compliment11 = "How is it possible that someone could be as " + positive_adjective1.lower() + " and " + positive_adjective2.lower() + " as you?"
print compliment11

compliment12 = "Are you real? I find your " + positive_adjective1.lower() + " " + positive_noun1.lower() + " too " + positive_adjective2 + " to be true." + " I must be in " + place1 + "."
print compliment12

compliment13 = "Your " + positive_adjective1.lower() + " " + positive_noun1.lower() + " makes me want to " + positive_verb2.lower() + " " + place1 + "."
print compliment13

compliment14 = "I love how you " + positive_verb2.lower() + " " + positive_noun1.lower() + " even through the " + positive_adjective2 + " times!"
print compliment14

compliment15 = "Your " + positive_adjective1.lower() + " " + positive_noun1.lower() + " is changing " + proper_noun2 + "'s life right now."
print compliment15

compliment16 = "Are you a " + positive_adjective1.lower() + " " + positive_noun1.lower() + "? Because you're the only " + positive_adjective1.lower() + " " + positive_noun1.lower() + " I see!"
print compliment16

compliment17 = "Stop doubting yourself " + proper_noun1 + "! Your " + positive_adjective2.lower() + " " + positive_noun1.lower() + " is " + positive_adjective1.lower() + "."
print compliment17

compliment18 = "You're looking particurally " + positive_adjective1.lower() + " today!"
print compliment18

compliment19 =  "I love that you're " + positive_adjective2.lower() + " unlike " + proper_noun2 + "."
print compliment19

compliment20 = "I've never met anyone as " + positive_adjective1.lower() + " as you, besides " + proper_noun1 +"!"
print compliment20

compliments = [

			compliment1, 
			compliment2, 
			compliment3, 
			compliment4, 
			compliment5, 
			compliment6, 
			compliment7, 
			compliment8, 
			compliment9, 
			compliment10, 
			compliment11, 
			compliment12,
			compliment13,
			compliment14,
			compliment15,
			compliment16,
			compliment17,
			compliment18
			];

#TWEETING
api = twitter.Api(consumer_key = consumerKey, consumer_secret = consumerSecret, access_token_key = accessTokenKey, access_token_secret = accessTokenSecret)

	# post tweet
print 'posting tweet...'
try:
	status = api.PostUpdate((random.choice(compliments)))	# try posting
	print '- success!'

except twitter.TwitterError, e:		# if an error, let us know
	print '- error posting!'
	print e






