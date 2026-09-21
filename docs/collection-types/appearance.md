# Appearance

Use **Appearance** for a staff member’s public talks, interviews, media appearances, or similar activity.

## Where records appear

| Website location | Presentation |
| --- | --- |
| Related Staff profile → Appearances tab | Rich-text item followed by an optional clickable URL |

The tab exists only when the Staff record has at least one related Appearance.

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Description` | Localized, required | Staff Appearances tab | Full visible rich-text item. Put essential title/date/location information here. |
| `Link` | Shared | Below Description | Printed as a clickable URL. |
| `Staff` | Relation | Staff profile selection | Determines which profile contains the item. |
| `Tags` | Shared | Not displayed | Stored for classification/search. |
| `Date` | Localized | Not displayed or used for sorting | Store only; include a visible date in Description if required. |
| `Location` | Localized | Not displayed | Store only; include it in Description if required. |
| `Platform` | Localized | Not displayed | Store only; include it in Description if required. |
| `Title` | Localized | Not displayed | Store only; include a visible title in Description. |
| `Media` | Localized | Not fetched/displayed | Current Staff profile does not load this media. |
