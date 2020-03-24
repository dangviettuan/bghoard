 
# Feature List
yarn nx g @nrwl/angular:lib --directory=store feature-list \
    --routing --parentModule=apps/store/src/app/app.module.ts --lazy
yarn nx g @nrwl/angular:component game-list --project=store-feature-list

# Feature Details
yarn nx g @nrwl/angular:lib --directory=store feature-details \
    --routing --parentModule=apps/store/src/app/app.module.ts --lazy
yarn nx g @nrwl/angular:component game-details --project=store-feature-details

# Feature Cart
yarn nx g @nrwl/angular:lib --directory=store feature-cart
yarn nx g @nrwl/angular:component cart --project=store-feature-cart --export

# UI Formatters
yarn nx g @nrwl/angular:lib --directory=store ui-formatters
yarn nx g @nrwl/angular:pipe currency --project=store-ui-formatters --export
yarn nx g @nrwl/angular:pipe rating --project=store-ui-formatters --export

# Data Access Games
yarn nx g @nrwl/angular:lib --directory=store data-access-games
yarn nx g @nrwl/angular:service games --project=store-data-access-games

# Data Access Cart
yarn nx g @nrwl/angular:lib --directory=store data-access-cart
yarn nx g @nrwl/angular:service cart --project=store-data-access-cart