# Ruby Directory
============================</br>

This is a newer directory for me, but I'm absolutely <b>loving</b> it so far. I've run into a few issues here and there. I'm willing to outline a few in this README file.

## Some information about the states.rb file.
- I ran into some issues with a few of the *classes* and *indexes*.</br>
- An example of a problem I ran into would have to be the random_question() method. I really struggled with calling the index and finding the correct random number.</br>
- Another issue I ran into would be the decision between using a hash, class/objects, or two seperate arrays. I initially used two arrays out of simplicity reasons. I then learned about classes and objects, and decided to switch it over to using those. It was a blessing in disguise.</br>

## Some information about the Hangman.rb file.
- I haven't ran into too many issues as of quite yet. </br>
- I did run into a slight issue bringing in the words.txt file. I was unable to select a single word from the array, it kept throwing errors at me. But, once I realized it would be easier to just define a new variable for each part of the array selection. It made it quite a bit easier.</br>
- It's also quite a bit simpler than my states.rb file. So less issues.

## Some information about the WebTesting repository.
- I ran into a bug here and there with this project.</br>
- It is just not as well documented as more *up-to-date* frameworks.</br>
- But I still worked through it and got my tests to all pass and not throw any errors. </br>
- A big issue I ran into was following tutorials that didn't suit my laptop and/or version of Ruby that I was using. So, I simply decided to do what all developers do when in danger. Google it! But in all seriousness, I'm pretty proud of myself for getting this to work with little to no help from outside sources. 

## Some information about the Pokedex repository
- One of the biggest issues that I ran into with this project was the fact that it was my first time working with API's for quite a while and the first time ever with Ruby. 
- This was an issue because, I didn't really remember how to connect an API, especially in gem form. But, I learned by using my previous projects that I just needed to require it and it would solve quite a *few* of my issues. 
- It was pretty fun to be able to use the PokeApi.get command, and use it to my advantage to grab most of the information throughout the code. 
- This has really opened my eyes to the world of API's and I am planning on working with API's more as the future goes on. Let me know what you think of my code! 
- A newer issue I just ran into, would be a bug where you type in a lower number, as in single digits. It would return the incorrect generation of Pokemon. I solved this by adjusting it to accept only integers using *.to_i* method. Now to exit, all you need to type is *1234*.

## Quite a bit of information about the WebAutomation repository
- I ran into some issues working with this. It was probably the project that took the longest. 
- It could be because I was working on it so off and on. But it took me a solid week. I just had to learn so many new things. 
- I am currently working with StackOverflow and (my best friend) Google, to find a way for me to be able to streamline the whole process a bit more. 
- I'm planning on creating a web scraping project in the near future, and I will be using that to coincide with this project. Through a multitude of ways. 
- One of the biggest issues I ran into was the fact that I couldn't figure out how to write to a file and append each thing on top of each other. I really struggled with that for a few hours. I tried doing the *File.read* function that I use in the *data_write* function. However, that didn't append it properly. It just added it all onto the same line. But once I found the *open(file, 'w') do |f|* function, it made things so much easier. 
- After I found out and learned about all of the different ways to write to other files, it has opened up a whole new world for me. This along with API's and what I've learned about those as well. I feel I can make some pretty beefy and cool projects. 