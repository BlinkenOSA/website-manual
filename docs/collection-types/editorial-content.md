# Pages and editorial content

This page covers the collection types that create public pages, cards, and calendar entries. **Required** reflects Strapi validation; a non-required field may still be necessary for a complete website presentation.

## Page

Use **Page** for standard informational pages reached through the main sections, such as About Us, Collections, or Academics. A Page appears at a public route only when the frontend has a matching route/menu entry for its slug.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Title` | Localized, required | Page header, browser title, social title, and related-material card title. |
| `CardImage` | Shared | Header/social image and related-material card image. |
| `Tags` | Not explicitly localized | Stored for classification/search; not printed on the page. |
| `Content` | Localized, required | Ordered page body. See [Content components](../components.md). |
| `Slug` | Localized | Used to fetch the page and match it to a coded website route. |
| `RelatedCollections` | Relation | Collection cards in the Related Materials carousel. |
| `RelatedEntries` | Relation | Entry cards in Related Materials. |
| `RelatedEvents` | Relation | Event cards in Related Materials. |
| `RelatedNews` | Relation | News cards in Related Materials. |
| `RelatedProjects` | Relation | Project cards in Related Materials. |
| `RelatedPagesSource`, `RelatedPagesDestination` | Self-relations | Other Page cards in Related Materials. |

## Collection

Use **Collection** for selected collections. Records appear as cards on the homepage and in Curated, Online, or Audio-Visual collection lists, then open a collection detail page.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Title` | Localized, required | Card heading, detail heading, browser/social title, and related card title. |
| `Image` | Shared, required | Card and social image. The detail layout varies by collection route; some use a simple header rather than the image. |
| `CardText` | Localized, required | Truncated card summary and social description. |
| `ContentOld` | Localized, required | Legacy Blocks field; **not rendered by the current website**. |
| `Link` | Localized | Optional “visit” button on Curated, Online, and AV detail pages. |
| `Tags` | Shared | Stored for classification/search; not printed. |
| `ContentTypes` | Shared, required | Determines list membership and detail URL. `Curated`, `Online`/`Digital`, and `AV` are supported. The first selected value controls the card URL. |
| `MaterialTypes` | Shared, required | Icons and tooltips on cards: Textual, Moving Image, Audio, Still Image. |
| `rank` | Localized | Lower values appear first in the homepage collection carousel; title breaks ties. |
| `Size` | Localized | Item count printed on the card when greater than zero. |
| `Slug` | Localized, required | Detail-page URL. |
| `Content` | Localized | Actual detail-page body. Although optional in Strapi, this is the body the website renders. |
| `RelatedEntries`, `RelatedEvents`, `RelatedNews`, `RelatedPages`, `RelatedProjects` | Relations | Corresponding cards in Related Materials below the detail body. |
| `RelatedCollectionsSource`, `RelatedCollectionsDestination` | Self-relations | Other Collection cards in Related Materials. |

!!! warning "Collection routing"
    `Library` is an available `ContentTypes` value but the current card URL builder has no Library destination. Do not rely on a Collection card with Library as its first type without developer review.

## Project

Use **Project** for Academic, Archival, Partner, or Public projects. `Profiles` determines which list(s) include the record.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Title` | Localized, required | Card and detail heading; browser/social title. |
| `Image` | Localized, required | Card, header, and social image. |
| `StartDate` | Shared DateApprox., repeatable | Used with `EndDate` for Academic current/completed filtering; not printed. |
| `EndDate` | Shared DateApprox., repeatable | Its year decides current versus completed Academic projects; not printed. A missing end date is treated as past by the current completed-project query. |
| `Language` | Shared | Stored but not displayed or used by current project pages. |
| `HostType` | Shared | Stored but not displayed or used by current project pages. |
| `CardText` | Localized, required | Card summary and social description. |
| `ContentOld` | Localized, required | Legacy Blocks field; **not rendered**. |
| `Link` | Shared | Optional external-project button on cards and detail pages. |
| `Tags` | Shared | Stored for classification/search; not printed. |
| `Slug` | Localized, required | Detail-page URL. |
| `Profiles` | Localized, required | List membership: Academic, Archival, Partner, Public. Related-card routing uses the first value. |
| `ButtonText` | Localized | Label for the external-project button; a translated default is used on detail pages when empty. |
| `Content` | Localized | Actual detail-page body. |
| `RelatedCollections`, `RelatedEntries`, `RelatedEvents`, `RelatedNews`, `RelatedPages` | Relations | Corresponding cards in Related Materials below the detail body. |
| `RelatedProjectsSource`, `RelatedProjectsDestination` | Self-relations | Other Project cards in Related Materials. |

## Entry

Use **Entry** for Blog, Podcast, and Video editorial posts. Entry cards appear on the homepage and Entries listing.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Title` | Localized, required | Card/detail heading and social title. |
| `Image` | Shared, required | Card, detail header, social image, and staff Entries tab. Although the schema accepts several media types, the frontend treats it as an image. |
| `CardText` | Localized, required | Card summary and social description. |
| `Language` | Localized | Stored but not displayed or used by current Entry pages. |
| `EntryType` | Shared, required | Card label/icon and URL segment: `/entries/blog`, `/entries/podcast`, or `/entries/video`. |
| `Profile` | Shared, required | Card/detail colour and list filtering. |
| `PodcastLink` | Localized | Stored but **not used by the current website**. Add audio or links in the visible body instead. |
| `Tags` | Shared | Stored for classification/search; not printed. |
| `Content` | Localized, required | Detail-page body. |
| `Slug` | Localized | Preferred URL; numeric ID is used as fallback. |
| `Author` | Localized | Plain-text author shown on the detail page. |
| `AuthorStaff` | Relation | Staff author badges shown beside the author/date area. |
| `OriginalCreationDate` | Localized | Published date on cards/detail; Strapi creation date is the fallback. |
| `rank` | Localized | Stored but not used for current Entry ordering. |
| `RelatedCollections`, `RelatedEvents`, `RelatedNews`, `RelatedPages`, `RelatedProjects` | Relations | Corresponding cards in Related Materials. |
| `RelatedEntriesSource`, `RelatedEntriesDestination` | Self-relations | Other Entry cards in Related Materials. |

## News

Use **News** for news cards on the homepage and News listing.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Title` | Localized, required | Card/detail heading and social title. |
| `Image` | Shared, required | Card, detail header, and social image. |
| `CardText` | Localized, required | Card summary and social description. |
| `Profile` | Localized, required | Colour and profile filtering. |
| `Tags` | Localized | Stored for classification/search; not printed. |
| `Content` | Localized, required | Detail-page body. |
| `Slug` | Localized | Preferred URL; numeric ID is fallback. |
| `Author` | Localized | Plain-text author on the detail page. |
| `AuthorStaff` | Relation | One Staff author badge on the detail page. |
| `ActivityType` | Localized, required | Card icon and translated activity label/filter. |
| `OriginalCreationDate` | Localized | Date on cards/detail and sort key; Strapi creation date is fallback. |
| `rank` | Shared | Stored but not used for current News ordering. |
| `RelatedCollections`, `RelatedEntries`, `RelatedEvents`, `RelatedPages`, `RelatedProjects` | Relations | Corresponding cards in Related Materials. |
| `RelatedNewsSource`, `RelatedNewsDesination` | Self-relations | Other News cards. The destination field is misspelled in the schema; see Implementation notes. |

## Event

Use **Event** for the Program Calendar, homepage event cards, and event detail pages.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Title` | Localized, required | Calendar/card/detail heading and social title. |
| `Subtitle` | Localized | Stored but not displayed by current event views. |
| `StartDate` | Localized, required | Calendar/card/detail date and current/past ordering. Enter the correct time zone in Strapi. |
| `EndDate` | Localized | End date on details; date range for exhibitions; determines whether an event is past. |
| `Location` | Localized | Venue on the detail page. |
| `Language` | Shared | Calendar filter/format column and detail metadata. |
| `EventType` | Shared, required | Calendar/card icon and type label. |
| `HostingType` | Shared, required | Calendar filter/format column and detail metadata. |
| `Profile` | Shared, required | Colour and calendar program-type filter. |
| `CardText` | Localized, required | Event-card summary, social description, and calendar expanded-text fallback. |
| `RegistrationLink` | Shared | Registration button in the calendar expansion and detail page. |
| `Tags` | Shared | Stored for classification/search; not printed. |
| `Content` | Localized, required | Detail-page body. |
| `Slug` | Localized | Preferred detail URL; numeric ID is fallback. |
| `ZoomLink` | Shared | Join-on-Zoom button on the detail page. |
| `Image` | Shared | Calendar expansion, event card, detail header, and social image. Treat it as editorially required even though Strapi does not. |
| `rank` | Localized | Stored but current event lists sort by `StartDate`, not rank. |
| `DescriptionShort` | Localized | Preferred short description in the expanded Program Calendar row. |
| `RelatedCollections`, `RelatedEntries`, `RelatedNews`, `RelatedPages`, `RelatedProjects` | Relations | Corresponding cards in Related Materials. |
| `RelatedEventsSource`, `RelatedEventsDestination` | Self-relations | Other Event cards in Related Materials. |

## External Page

External Page records provide a branded introduction and button to a separate service or partner site. Public routes are fixed in frontend configuration (`verzio`, `fortepan`, `budapest100`, `catalog`, `galeria-centralis`, and `we-are-ceu`) and point to specific Strapi record IDs.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Title` | Localized, required | Header and browser/social title. |
| `CardImage` | Media | Header and social image. |
| `Link` | Localized, required | Destination of the bottom call-to-action button. |
| `LinkButtonText` | Localized, required | Call-to-action label. |
| `Content` | Localized | Body. This collection currently allows only ContentImage components. |

Creating a new External Page record alone does not create a public URL; frontend configuration must also be changed.

## Related-material fields

The six main editorial types use a common card carousel. The card pulls a related record's title, image, teaser, type/profile, slug, and creation date. If one of those is missing or unpublished, the related card may be incomplete or absent.

Relation field names correspond to the target type:

- `RelatedCollections`
- `RelatedEntries`
- `RelatedEvents`
- `RelatedNews`
- `RelatedPages`
- `RelatedProjects`
- same-type `Source` and `Destination` variants
