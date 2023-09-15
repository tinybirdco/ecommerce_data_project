tb deploy
tb datasource delete top_products_view --sql-condition "date > now() - interval 30 day"
