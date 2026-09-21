# Publication

Use **Publication** for publications associated with Staff members.

## Where records appear

| Website location | Presentation |
| --- | --- |
| Related Staff profile → Publications tab | Rich-text citation/description followed by an optional link |

There is no current standalone Publication page. The tab exists only when a Staff record has related Publications.

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Description` | Localized, required | Staff Publications tab | Full visible citation/description. |
| `Link` | Shared | Staff Publications tab | Clickable URL below Description. |
| `Tags` | Shared | Not displayed | Stored for classification/search. |
| `Staff` | Relation | Staff profile selection | Determines which profiles contain the publication. |
