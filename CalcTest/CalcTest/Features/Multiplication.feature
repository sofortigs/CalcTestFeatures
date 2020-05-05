﻿Feature: Multiplication
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the multiplication of  numbers

Background:
	Given Web calculator open in the browser

Scenario Outline: Multiply two positiv integer numbers
	When I entered <first number>
	When I press '*' button
	When I entered <second number>
	When I press '='
	Then the <result> should be on the screen
	
	Examples:
		| first number | second number | result     |
		| 1            | 1             | 1          |
		| 456          | 1             | 456        |
		| 0            | 12            | 0          |
		| 123          | 875           | 107625     |
		| 15975        | 98756         | 1577627100 |

Scenario Outline: Multiply with  negative integer numbers
	When I entered <first number>
	When I press '*' button
	When I entered <second number>
	When I press '='
	Then the <result> should be on the screen
	
	Examples:
		| first number | second number | result      |
		| -1           | 1             | -1          |
		| 456          | -1            | -456        |
		| 0            | -12           | 0           |
		| -123         | -875          | 107625      |
		| -15975       | 98756         | -1577627100 |

Scenario Outline: Multiply with first fractional numbers
	When I entered <integer part of first number>
	When I press '.' button
	When I entered <fractional part of number>
	When I press '*' button
	When I entered <second number>
	When I press '='
	Then the <result> should be on the screen
	
	Examples:
		| integer part of first number | fractional part of number | second number | result      |
		| 123                          | 456                       | 754           | 93085.824   |
		| 0                            | 0001                      | 345           | 0.0345      |
		| 3                            | 23                        | 1             | 3.23        |
		| 123                          | 33                        | 0             | 0           |
		| 0                            | 123                       | -1            | -0.123      |
		| 234                          | 743                       | -1234         | -289672.862 |

Scenario Outline: Multiply with second fractional numbers
	When I entered <first number>
	When I press '*' button
	When I entered <integer part of second number>
	When I press '.' button
	When I entered <fractional part of number>
	When I press '='
	Then the <result> should be on the screen

	
	Examples:
		| first number | integer part of second number | fractional part of number | result       |
		| 2            | 123                           | 123                       | 246.246      |
		| 8474         | 8483                          | 833                       | 71892000.842 |
		| 87           | 0                             | 000009                    | 0.000783     |
		| 0            | 554                           | 344                       | 0            |
		| -433         | 543                           | 22                        | -235214.26   | 
		| 3            | -43324                        | 44                        | -129973.32   |
		| -223         | -12                           | 43                        | 2771.89      |

Scenario Outline: Multiply two fractional numbers
	When I entered <int part first number>
	When I press '.' button
	When I entered <fract part number>
	When I press '*' button
	When I entered <int part second number>
	When I press '.' button
	When I entered <frac part second number>
	When I press '='
	Then the <result> should be on the screen

	
	Examples:
	| int part first number | fract part number | int part second number | frac part second number | result      |
	| 11                    | 22                | 65                     | 432                     | 734.14704   |
	| -1234                 | 56                | 0                      | 00003                   | -0.0370368  |
	| -0                    | 0003              | -0                     | 00001                   | 0.000000003 |
		


		

		