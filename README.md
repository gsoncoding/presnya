# presnya

Presnya — foundation for a calm, local-first product. The repository is intentionally small while the product shape is being validated.

## Structure

- `backend/` — dependency-free HTTP API with health and today's priorities.
- `ios/PresnyaApp/` — initial SwiftUI application shell.
- `PRODUCT_SPEC.md` and `DESIGN_PRINCIPLES.md` — product and UX decisions.

## Development

```sh
node backend/server.mjs
curl http://localhost:3000/health
```

Expected response: `{"status":"ok"}`.

The first daily-view payload is available at `GET /api/today`.
