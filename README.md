# Ruby_oop
# Tic Tac Toe - Ruby(OOP)

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

## About the project

This is a collaborative project which aims at building an interactive executable cli Tic Tac Toe game in Ruby. The objective of this project was to create the game using Object oriented concept in Ruby such as classes and methods while respecting the single responsibility rule. Instructions for this project and be found [here](https://www.theodinproject.com/courses/ruby-programming/lessons/oop). 

## Features

- Requesting the players for their names and awaiting their input
- Validating the input
- Assigning symbols for each player
- Checking the result for win or draw
- providing the option to quit the game anytime
- Restarting the game on request

## Technologies Used

* Ruby (emphasizing on the Object oriented nature of the program)

## Installation and Use

To be able to use our program:

- Make sure ruby is installed in your machine.
- Clone the repo to your computer. 
- Open your terminal in repo location.
- run `./bin/main.rb` in the terminal.

## Outputs

Welcome message and initial prompts:
```
Welcome to the Tic-Tac-Toe Game, there will be 2 players to join this game!
Please input your name for(player1):Moin
Please input your name for(player2):Samuel
```
Resquesting players for input:
```
          | 7   | 8   | 9   |
          | --- | --- | --- |
          | 4   | 5   | 6   |
          | --- | --- | --- |
          | 1   | 2   | 3   |

Moin, Please enter your position (1 - 9) or press 'q' to exit game: 
1

          | 7   | 8   | 9   |
          | --- | --- | --- |
          | 4   | 5   | 6   |
          | --- | --- | --- |
          | X   | 2   | 3   |

Samuel, Please enter your position (1 - 9) or press 'q' to exit game: 
5

          | 7   | 8   | 9   |
          | --- | --- | --- |
          | 4   | O   | 6   |
          | --- | --- | --- |
          | X   | 2   | 3   |
```

Invalid input dialogue:
```
Moin, Please enter your position (1 - 9) or press 'q' to exit game: 
10
Please enter an valid number, thanks! 
```

Player win dialogue:
```
Samuel, Congratulations! You won!

          | O   | 8   | 9   |
          | --- | --- | --- |
          | X   | O   | 6   |
          | --- | --- | --- |
          | X   | X   | O   |

Would you like to play again?(y/n)?
```

Draw match dialogue:
```
Moin, Please enter your position (1 - 9) or press 'q' to exit game: 
8

          | O   | X   | O   |
          | --- | --- | --- |
          | X   | X   | O   |
          | --- | --- | --- |
          | X   | O   | X   |

Game board is full! Its a draw!
Would you like to play again?(y/n)?
```

## Contributors

* Moin Khan
    * Twitter: [@MoinKhanIF](https://twitter.com/MoinKhanIF)
    * LinkedIn : [@MoinKhanIF](https://www.linkedin.com/in/moinkhanif/)
    * Personal Website: [MoinKhan.Info](https://moinkhan.info)

* Samuel Kiroko N
    * Twitter: [@kirokonjenga](https://twitter.com/kirokonjenga)
    * LinkedIn: [@samuel-kiroko](https://www.linkedin.com/in/samuel-kiroko/)
    * Personal Website: [kiroko.tech](https://www.kiroko.tech/)
<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/Samkiroko/Ruby_oop.svg?style=flat-square
[contributors-url]: https://github.com/Samkiroko/Ruby_oop/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Samkiroko/Ruby_oop.svg?style=flat-square
[forks-url]: https://github.com/Samkiroko/Ruby_oop/network/members
[stars-shield]: https://img.shields.io/github/stars/Samkiroko/Ruby_oop.svg?style=flat-square
[stars-url]: https://github.com/Samkiroko/Ruby_oop/stargazers
[issues-shield]: https://img.shields.io/github/issues/Samkiroko/Ruby_oop.svg?style=flat-square
[issues-url]: https://github.com/Samkiroko/Ruby_oop/issues