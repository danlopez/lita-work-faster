# lita-work-faster
Does a couple of things to help you work faster:


1) Responds to the command "Hey" with the response "@all, work faster"
2) Responds to the command "Order" with a randomly generated order for people to present, such as in a morning standup.

## Installation

Add lita-work-faster to your Lita instance's Gemfile:

``` ruby
gem "lita-work-faster"
```


## Configuration

In your lita_config file, set the parameter work_faster.users with an array:

`config.handlers.work_faster.users = ["James", "George", "David"]`


## License

[MIT](http://opensource.org/licenses/MIT)
