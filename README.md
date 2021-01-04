# Header and Footer Script

For dynamically appending header and footer.

The production build `/dist.js` is deployed via [jsDelivr](https://www.jsdelivr.com/), available at [https://cdn.jsdelivr.net/gh/PatentsView/pv-header-footer/dist.js](https://cdn.jsdelivr.net/gh/PatentsView/pv-header-footer/dist.js).

The script can then be placed at the end of the page body to render the header and footer.

```bash
# Install dependencies
npm install

# Development
## open or serve `/dev/index.html`
cd dev
npx live-server
## dev mode
npm run dev

# Production build
npm run build
```
