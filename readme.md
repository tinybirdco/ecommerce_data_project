

Template example for a ecommerce analytics project using Tinybird

## Install

First install tinybird cli, you'd need python3 installed

```bash
python3 -mvenv .e
. .e/bin/activate
pip install tinybird-cli
```

then run the following to create all the datasources and pipes and upload some sample data

```bash
tb auth
tb push --push-deps --fixtures
```

Ready to use in your tinybird account

You can append more products data by doing

```bash
tb datasource replace products https://storage.googleapis.com/tinybird-downloads/data/products.csv
```

