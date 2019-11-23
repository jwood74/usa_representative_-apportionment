# USA Representative Apportionment

Apportioning USA representatives based on the Huntington-Hill method.

## Setup

Save a CSV in directory as population.csv

The CSV should be in the format:

| state_name | population |
| ---------- | ---------- |
| example    | 100        |

## Usage

Simply execute `ruby main.rb`

This will loop through the the csv, and allocate out each representative from the 435.

## Read more

- [United States congressional apportionment](https://en.wikipedia.org/wiki/United_States_congressional_apportionment)
- [CGP Grey video on Electoral College](http://www.cgpgrey.com/blog/the-sneaky-plan-to-subvert-the-electoral-college)