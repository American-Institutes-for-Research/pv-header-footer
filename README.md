# Header and Footer Script

For dynamically appending header and footer.

The production build `/build.js` should be copied and named as `dist-[YEAR]-[MONTH]-[DATE]-[number].js`. It is then deployed via [jsDelivr](https://www.jsdelivr.com/), available at `https://cdn.jsdelivr.net/gh/PatentsView/pv-header-footer/dist-[YEAR]-[MONTH]-[DATE]-[number].js`.

The script can then be placed at the end of the page body to render the header and footer.

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
