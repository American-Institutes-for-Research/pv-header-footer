# Header and Footer Script

For dynamically appending header and footer for the PV non-Drupal sites.

Build and rename the `build.js` file with the current deployed file's name, and replace the old file.

If the change needs to take immediate effect, the production build `/build.js` should be copied and named as `dist-[YEAR]-[MONTH]-[DATE]-[number].js` (a new file name) to bust the cache. When pushed, it will be deployed and available at [jsDelivr](https://www.jsdelivr.com/), available at `https://cdn.jsdelivr.net/gh/PatentsView/pv-header-footer/dist-[YEAR]-[MONTH]-[DATE]-[number].js`. Then the script tag needs to be updated on each page to render the new header and footer.

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
