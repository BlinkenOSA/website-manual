# External Page

Use **External Page** for a branded introduction that sends visitors to an external partner or service.

## Where External Page records appear

| Website location | Presentation |
| --- | --- |
| `/external/verzio` | Uses Strapi record ID 1 |
| `/external/fortepan` | Uses record ID 2 |
| `/external/budapest100` | Uses record ID 3 |
| `/external/we-are-ceu` | Uses record ID 4 |
| `/external/catalog` | Uses record ID 5 |
| `/external/galeria-centralis` | Uses record ID 6 |

The frontend configuration fixes both the route and record ID. Creating another record does not automatically create a public URL.

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Title` | Localized, required | Page header and browser/social title | Public landing-page title. |
| `CardImage` | Media | Page header and social preview | Header artwork. |
| `Link` | Localized, required | Bottom call-to-action | External destination. |
| `LinkButtonText` | Localized, required | Bottom call-to-action | Button label. |
| `Content` | Localized | Main body | This content type currently permits only ContentImage components. |

## Before publishing

- Check that you are editing the record ID connected to the intended route.
- Test the external Link and translated LinkButtonText.
- A new route requires a frontend code change.
