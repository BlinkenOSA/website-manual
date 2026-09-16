# Implementation notes

This page records current behaviour that can surprise editors. It is also a maintenance checklist for developers.

## Known field and renderer mismatches

| Area | Current behaviour | Editorial workaround |
| --- | --- | --- |
| Collection and Project `ContentOld` | Required in Strapi but never fetched/rendered. The optional dynamic-zone `Content` is the visible body. | Keep `ContentOld` minimal if validation requires it; build the real page in `Content`. |
| Job teaser | Schema calls the field `ContentHighglight`; frontend asks for `ContentHighlight`. | No reliable editorial workaround. Put essential summary in the title/body until code and schema agree. |
| URL Redirect status | Schema supplies `Permanent`; frontend reads `StatusCode`. | Coordinate with a developer. Current generated redirects are temporary. |
| News self-relation | Schema uses `RelatedNewsDesination` (misspelled); related-material code expects `RelatedNewsDestination`. | Do not assume the destination side will appear; verify on the public page. |
| Video upload | `media.video.Video` can store a file, but the renderer only handles `YouTube`. | Always supply a supported YouTube URL. |
| TextBox image | `contents.text-box.Image` exists but the renderer ignores it. | Use a separate Image or ContentImage component. |
| Collection Library type | `Library` is a schema option, but collection-card routing has no Library route. | Do not make Library the first `ContentTypes` value without developer review. |

## Fields intentionally stored but not visibly rendered

These fields may be useful for administration, future development, or search, but currently do not produce visible page text:

- most `Tags` fields;
- Entry `Language`, `PodcastLink`, and `rank`;
- Event `Subtitle` and `rank`;
- Project `Language` and `HostType`;
- Staff `Phone`;
- Appearance `Title`, `Date`, `Location`, `Platform`, `Media`, and `Tags`;
- Course `Content`, `Tags`, `Slug`, `Image`, `Year`, and `Semester`;
- Home Page Carousel `Link` (use `ButtonLink`);
- several rank fields outside the homepage fetches.

“Not visibly rendered” does not mean safe to delete from the schema. Confirm API, search-index, and migration needs before changing the content model.

## Frontend-controlled routes

Some records need code configuration in addition to Strapi content:

- Page slugs must be reachable through an existing section route and are usually represented in the coded menu.
- External Page routes map fixed path names to fixed Strapi numeric IDs.
- Collection and Project URLs are calculated from exact option values.
- URL Redirect records are loaded at build time, so publishing alone is insufficient.

## Updating this manual

When a schema or renderer changes:

1. Compare the affected `schema.json` with the corresponding API fetcher and page/card component.
2. Update field scope, required status, options, and actual website placement.
3. Update the component availability matrix when dynamic-zone configuration changes.
4. Remove a known issue only after verifying the public rendering path.
5. Run `mkdocs build --strict` and review the changed pages in a browser.
