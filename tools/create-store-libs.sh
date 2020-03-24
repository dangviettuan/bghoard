 
# Feature List
yarn nx g @nrwl/angular:lib --directory=store feature-list \
    --routing --parentModule=apps/store/src/app/app.module.ts --lazy --style=scss
yarn nx g @nrwl/angular:component game-list --project=store-feature-list --style=scss

# Feature Details
yarn nx g @nrwl/angular:lib --directory=store feature-details \
    --routing --parentModule=apps/store/src/app/app.module.ts --lazy --style=scss
yarn nx g @nrwl/angular:component game-details --project=store-feature-details --style=scss

# Feature Cart
yarn nx g @nrwl/angular:lib --directory=store feature-cart --style=scss
yarn nx g @nrwl/angular:component cart --project=store-feature-cart --export --style=scss

# UI Formatters
yarn nx g @nrwl/angular:lib --directory=store ui-formatters --style=scss
yarn nx g @nrwl/angular:pipe currency --project=shared-ui-formatters --export
yarn nx g @nrwl/angular:pipe rating --project=shared-ui-formatters --export

# Data Access Games
yarn nx g @nrwl/angular:lib --directory=store data-access-games --style=scss
yarn nx g @nrwl/angular:service games --project=store-data-access-games

# Data Access Cart
yarn nx g @nrwl/angular:lib --directory=store data-access-cart --style=scss
yarn nx g @nrwl/angular:service cart --project=store-data-access-cart