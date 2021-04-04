# My Custom Linters

In this project I made custom linters for checking ruby syntax, I made checks for empty lines, trailing white spaces and unclosed blocks.

# Instructions

For the: [Github-link](https://github.com/MarkoNS1990/my_linters)

To get a local copy of the repository please run the following commands on your terminal:

`$ git clone https://github.com/MarkoNS1990/my_linters.git`

- To install rspec `gem install rspec`
- Rspec is used for testing purposes

## Built with

- VS Code
- Ruby

## Testing instructions

`$ cd my_linters`
`$ rspec spec/linters_test.rb`

## Test For Linter Errors

> Copy your ruby file in the my_linters folder

```
$ ruby bin/main.rb
```

It will log all errors in your code from test.rb file.

## Good and Bad examples

### **White trailing space**

> Good example - pipe indicates the cursor

```
def my_method do|
    puts 'Hello world'
end
```

> Bad example

```
def my_method do |
    puts 'Hello world'
end
```

## Empty Line

> Good example

```
def my_method do
    puts 'Hello world'
end
```

> Bad example

```
def my_method do
    puts 'Hello world'

end
```

## Unexpected end keyword

> Good example

```
def my_method do
    puts 'Hello world'
end
```

> Bad example

```
def my_method do
    puts 'Hello world'
end
end
```

# Authors

- Name :Marko Zecevic
- Githhub :https://github.com/MarkoNS1990

# Show your support

- Support by giving star

# Acknowledgement

- Microverse

## 📝 License

This project is [MIT](https://github.com/git/git-scm.com/blob/master/MIT-LICENSE.txt) licensed.
