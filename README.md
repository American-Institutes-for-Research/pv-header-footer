# Header and Footer Script

For dynamically appending header and footer for the PV non-Drupal site.

Build and rename the `build.js` file with the current deployed file's name, then replace the file.

If the change needs to take immediate effect, the production build `/build.js` should be copied and named as `dist-[YEAR]-[MONTH]-[DATE]-[number].js` (a new file name) to bust the cache. It can then be deployed via [jsDelivr](https://www.jsdelivr.com/), available at `https://cdn.jsdelivr.net/gh/PatentsView/pv-header-footer/dist-[YEAR]-[MONTH]-[DATE]-[number].js`. The script tag can then need to be updated on the end of the page body for each page to render the header and footer.

```bash
# Install dependencies
npm install

# Development
## Compile and watch for DEV
npm run dev
## Auto reload live server
npm run serve

# Production build
npm run build
```
