# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
User.create!(username: "Tron", password: "test", password_confirmation: "test")
User.create!(username: "Dougie", password: "test", password_confirmation: "test")
User.create!(username: "Tony", password: "test", password_confirmation: "test")
User.create!(username: "Ryan", password: "test", password_confirmation: "test")

Term.destroy_all
# GENERAL TERMS
Term.create!(word: "Anime", definition: "Used mostly to refer to animation specifically from Japan", category: 0, pronunciation: "Ah-knee-meh")
Term.create!(word: "Dub", definition: "Anime that after being recorded in it's original language has the voices rerecorded in a new language", category: 0)
Term.create!(word: "Filler", definition: "An episode that does not progress the story", category: 0)
Term.create!(word: "O.V.A. (Original Video Animation)", definition: "A one off episode/movie that is seperate from the current stories progression", category: 0)
Term.create!(word: "Sub", definition: "Anime that after being recorded in original language is then given subtitles to a different language", category: 0)
Term.create!(word: "Weeb", definition: "A person who either tries to use anime specific lingo in everyday life or tries to incorporate Japanese customs into their personal life base mostly off watching anime", category: 0, pronunciation: "We-b")

# ANIME CATEGORIES
Term.create!(word: "Ecchi", definition: "Anime Category that centers around sexual situations but not actual sex", category: 1, pronunciation: "eh-chee")
Term.create!(word: "Mecha", definition: "Anime Category that focuses on characters piloting a large mechanized combat robot", category: 1, pronunciation: "meh-kah")
Term.create!(word: "Isekai", definition: "Anime Category where the main character is transported to a new world/demension", category: 1, pronunciation: "E-seh-kai")
Term.create!(word: "Sub", definition: "Anime that after being recorded in original language is then given subtitles to a different language", category: 1)
Term.create!(word: "Seinen", definition: "Similar to Shounen but usually a more mature store. Aimed more at college age watchers.", category: 1, pronunciation: "Sey-nen")
Term.create!(word: "Shounen", definition: "Anime that is mostly action based.", category: 1, pronunciation: "show-nen")
Term.create!(word: "Shoujo", definition: "Anime that focuses mostly on personal or romantic relationships.", category: 1, pronunciation: "show-joe")
Term.create!(word: "Slice of Life", definition: "Anime category that depicts characters in a natural day to day life.", category: 1)
Term.create!(word: "Yaoi", definition: "Male/Male romance. Also called Shounen-ai.", category: 1, pronunciation: "yow-E")
Term.create!(word: "Yuri", definition: "Female/Female romance. Also called Shoujo-ai.", category: 1, pronunciation: "you-ree")

# PERSONALITIES AND RELTIONSHIPS
Term.create!(word: "Dandere", definition: "Character that shows little to zero emotion externally even though they can internally feel extreme emotions.", category: 2, pronunciation: "dan-deh-reh")
Term.create!(word: "Kouhai", definition: "A person who is an underclassmen or has less experience in a workplace.", category: 2, pronunciation: "koh-hi")
Term.create!(word: "N.E.E.T.", definition: "Not in Employment, Education, or Training. A shut-in", category: 2)
Term.create!(word: "Oka-san", definition: "Mother.", category: 2, pronunciation: "O-kah")
Term.create!(word: "Onii-san/chan", definition: "Older Brother", category: 2, pronunciation: "O-knee")
Term.create!(word: "Onee-san/chan", definition: "Older Sister", category: 2, pronunciation: "O-neh")
Term.create!(word: "Oto-san", definition: "Father", category: 2, pronunciation: "O-toe")
Term.create!(word: "Senpai", definition: "A person who is an upper classman or has more experience in a workplace", category: 2, pronunciation: "sehn-pie")
Term.create!(word: "Tsundere", definition: "A character who treats their love interest harshly because they are too afraid to express their true feelings.", category: 2, pronunciation: "soon-deh-reh")
Term.create!(word: "Yandere", definition: "A character that is so in love with someone else that they are willing to hurt/kill someone over their love interest for minor situations like greetings, conversing, or even looking in their direction. Also willing to harm love interest if they feel betrayed.", category: 2, pronunciation: "yahn-deh-reh")
