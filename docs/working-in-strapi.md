# Working in Strapi

## What Strapi controls

Strapi stores the website's structured content, translations, media, and relationships. The public website reads published records through the Strapi API. Editing a record changes content; it does not change the website layout or navigation code.

All current collection types use **Draft & Publish**. Most also use internationalization for English and Hungarian.

## Standard editing workflow

1. Open **Content Manager** in Strapi.
2. Select the correct collection type.
3. Create a record or open an existing one.
4. Select the locale you intend to edit.
5. Complete the identifying fields first: title or name, image, teaser text, classification, and slug.
6. Build the body in the `Content` dynamic zone when that field is available.
7. Add related material only after the related records already exist.
8. Save the draft, preview or review it, then publish.
9. Switch locale, complete the translation, and publish that locale separately.

!!! warning "Saving is not publishing"
    **Save** stores a draft. The public website receives only the published version. A translated locale can remain unpublished even when the other locale is live.

## Localized and shared fields

Localized fields can differ between English and Hungarian. Shared fields are common to both locales.

Typical localized fields include titles, summaries, rich text, captions, button text, and slugs. Typical shared fields include classifications, some dates, external URLs, and media. The reference tables state which fields are localized or shared according to the current schema.

When adding a translation:

- translate meaning, not only individual words;
- verify the translated slug;
- check that the correct media and relations are present;
- publish the translated locale;
- open the public page in that language.

## Titles, names, and slugs

The `Slug` is the final readable part of a public URL. For example, `research-room` may appear in `/collections/research-room`.

- Use lowercase words separated with hyphens.
- Do not use accents, spaces, punctuation, or a leading slash.
- Keep an existing slug stable unless a URL change is intentional.
- If a live slug must change, create a URL Redirect from the old path to the new path and ask for a frontend rebuild.

Some pages are reachable only when their slug is also present in the website's coded menu. Creating a Page record does not automatically add it to navigation.

## Rich text and the Content page builder

Strapi has two different editing patterns:

- A **Blocks** field is one rich-text document. It is used for fields such as Staff `Bio`, Job `Content`, or Publication `Description`.
- A **dynamic zone** is an ordered list of components. It is usually named `Content` and is used for full page bodies.

In rich text:

- use heading levels in order; do not choose a heading only for visual size;
- use real lists rather than manually typed bullets;
- use descriptive link text instead of “click here”;
- avoid pasting formatting from office software; paste as plain text when necessary;
- do not use a heading as the first line merely to repeat the page title, because the frontend already renders the title.

See [Content components](components.md) for the layout produced by every dynamic-zone component.

## Media library

Before uploading a file:

- give it a meaningful filename;
- optimize images for the web and avoid unnecessarily large originals;
- use landscape images for cards and headers unless the collection type calls for portraits;
- complete alternative text in the media library where available;
- write a component caption when the image needs visible attribution or context;
- upload PDFs as files, not images.

The website generates responsive image choices from Strapi formats. A missing image can leave a card, header, or profile visually incomplete even where the schema does not require one.

## Links

- Internal links should normally begin with `/`, for example `/about-us/staff`.
- External links should use the complete `https://` address.
- Check links in both locales.
- A button needs both its text and destination when the collection type provides separate fields.

## Ordering and classification

Several fields affect placement without appearing as text:

- `rank` orders Home Page Carousel and Credo records, and the homepage Collection selection. Lower values appear first.
- `Profile` or `Profiles` controls colour, section membership, and filtering.
- `EntryType`, `EventType`, and `ActivityType` control labels, icons, filters, or URLs.
- `ContentTypes` determines which Collection list/detail route is used. The **first selected value** is especially important.
- Dates decide whether Fellows, Interns, Projects, and Events are treated as current or past.

Use only the predefined option spelling shown in Strapi. The frontend relies on exact values.

## Related material

Page, Collection, Project, Entry, News, and Event records can relate to other records. Supported relations appear as cards below the main body.

- Add only genuinely useful follow-up material.
- Avoid relating a record to itself.
- Confirm that every related record is published in the required locale.
- A relation does not embed the other record's full content; it creates a linked card using its title, image, teaser, type, and slug.
- Self-relations have `Source` and `Destination` fields because of how Strapi stores the two sides. Either side is collected by the frontend where the naming matches.

## Drafts, updates, and removal

- For a new record, publish only when all required locales and media are ready.
- For an update, save and publish the changed locale.
- To remove content from the public site without deleting it, unpublish it.
- Before deleting a record, remove incoming relations and check whether menu or external-page configuration points to it.
