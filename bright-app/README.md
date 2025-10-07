Bright-app — minimal scaffold to prototype with Brightspace UI components locally.

Steps to run:

1) In your Brightspace clone (already at `vendor/brightspace-core`):

```
cd vendor/brightspace-core
npm install
npm link
```

2) In this app:

```
cd bright-app
npm install
npm link @brightspace-ui/core
npm run dev
open http://localhost:5173
```

If you prefer not to link, you can `npm install ../vendor/brightspace-core` instead.
