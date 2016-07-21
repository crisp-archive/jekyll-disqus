# Jekyll Disqus

![](https://img.shields.io/badge/license-MIT-blue.svg)
![](https://badge.fury.io/rb/jekyll-tagslist.svg)

A Liquid tag plugin for Jekyll

## Installation

1. Add the following to your site's ```Gemfile```:

    ```
    gem "jekyll-disqus"
    ```

2. Add the following to your site's ```_config.yml```:

    ```
    gems:
      - jekyll-disqus

    disqus:
      username: crispgm
    ```

3. Add the following in your site's template(s):

    ```
    {% disqus %}
    ```

## Usage

It will get directly from parameter:

```
{% disqus crispgm %}
```

Otherwise, it will read from the ```_config.yml```.