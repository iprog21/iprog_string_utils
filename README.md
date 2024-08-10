# Iprog String Utils

IprogStringUtils is a Ruby gem that extends the `String` class with a set of useful string manipulation utilities. It includes methods for converting strings to various cases, truncating strings, reversing words, stripping HTML tags, and more.

 <img src="https://github.com/iprog21/iprog_export_model_to_xlsx/blob/main/iprog-logo.png" width="150" alt="IPROG TECH" align="right" />

 This gem is provided by [**IPROG TECH**](https://www.iprog.tech/), an information technology company specializing in web development services using Ruby on Rails. IPROG TECH also offers free programming tutorials.

**Providing Good Quality Web Services:**
- Startup
- Maintenance
- Upgrading & Conversion

# Getting Started

## Installation
To install the gem and add it to your application's Gemfile, run on your terminal:

```bash
bundle add iprog_string_utils
```

If you're not using Bundler to manage dependencies, install the gem by running:

```bash
gem install iprog_string_utils
```

## Features

- Convert strings to `camelCase`, `snake_case`, and `kebab-case`
- Truncate strings with an ellipsis
- Reverse the order of words in a string
- Strip HTML tags from strings
- Check if a string is a palindrome
- Convert strings to boolean values
- And more!

## Usage
 ### camel case
 ```ruby
 "hello world".camel_case
 => "helloWorld"

 "Hello World Example".camel_case
 => "helloWorldExample"
 ```

### snake case
```ruby
"ThisIsATest".snake_case
=> "this_is_a_test"

"Hello World Example".snake_case
=> "hello_world_example"
```

### kebab case
```ruby
"Hello World!".kebab_case
=> "hello-world"

"ThisIsAnotherTest".kebab_case
=> "this-is-another-test"
```

## truncate a string with ellipsis or custom
```ruby
"This is a very long string".truncate(10)
=> "This is a..."

"This is a long string".truncate(15, '--')
=> "This is a lon--"
```

## reverse the order of words
```ruby
"hello world".reverse_words
=> "world hello"

"one two three".reverse_words
=> "three two one"
```

## strip html tags
```ruby
"<p>Hello <strong>world</strong>!</p>".strip_html
=> "Hello world!"

"<div>Some <em>text</em></div>".strip_html
=> "Some text"
```

## check if a string is a palindrome
```ruby
"madam".palindrome?
=> true

"racecar".palindrome?
=> true

"hello".palindrome?
=> false

"A man, a plan, a canal, Panama".palindrome?
=> true
```

## trim custom characters
```ruby
"...hello...".trim_custom('.')
=> "hello"

"$$$money$$$".trim_custom('$')
=> "money"

"###header###".trim_custom('#')
=> "header"
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/iprog21/iprog_string_utils.

## License
This gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct
This project has adopted the [Contributor Covenant Code of Conduct](./CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to iprog.tech@gmail.com.
