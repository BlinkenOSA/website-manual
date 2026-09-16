# Homepage and supporting data

## Home Page Carousel

Each published record becomes one slide in the homepage hero carousel. The first five records are fetched, ordered by ascending `rank`.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Date` | Shared | Date in the slide's top row. |
| `Image` | Shared, required | Responsive full-slide background image. |
| `Location` | Localized | Location in the top row. |
| `Title1stRow` | Localized, required | First title line. |
| `Title2ndRow` | Localized | Optional second title line. |
| `Subtitle1stRow` | Localized | First subtitle line. |
| `Subtitle2ndRow` | Localized | Optional second subtitle line. |
| `Link` | Localized | Stored but **not used by the current hero**. |
| `ButtonText` | Localized | Displays a call-to-action button when not empty. |
| `ButtonLink` | Localized | Button destination. Without it the button has no navigation target. |
| `Time` | Shared | Time displayed beside Date, shortened to hours and minutes. |
| `rank` | Shared | Ascending slide order. Keep values unique. |
| `Profile` | Shared | Controls the slide's section colour. |

## Credo

Credo records form the animated “We are…” homepage carousel. Records are sorted by ascending `rank`, then newest first.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `WeAre` | Localized, required | Large heading. |
| `CredoText` | Localized | Supporting statement. |
| `Type` | Localized, required | Selects colour and logo: Archivum, Collection, Academics, or Public Programs. |
| `rank` | Localized | Ascending carousel order. |

## Annual Report

Published Annual Report records appear on the Annual Reports page, sorted by `Year` descending.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Description` | Localized, required | Text beside the report cover. |
| `Link` | Shared, required | Opens from the report button in a new browser tab. |
| `Image` | Shared, required | Report cover image. |
| `Year` | Localized | Large year heading and card sort value. Use a consistent four-digit value. |

## Appearance

Appearance records are visible only through their related Staff profile. At least one related record creates an Appearances tab.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Description` | Localized, required | Rich text shown in the Staff Appearances tab. |
| `Link` | Shared | Printed as a clickable URL below the description. |
| `Staff` | Relation | Determines the Staff profile where the item appears. |
| `Tags` | Shared | Stored; not printed. |
| `Date` | Localized | Stored; not displayed or used for current ordering. |
| `Location` | Localized | Stored; not displayed. |
| `Platform` | Localized | Stored; not displayed. |
| `Title` | Localized | Stored; not displayed. Put essential title information in Description. |
| `Media` | Localized | Stored; not fetched or displayed. |

## Course

Course records are visible through related Staff profiles in a Courses tab.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Title` | Localized, required | Course heading. |
| `University` | Localized, required | Printed below the title. |
| `Staff` | Relation | Determines which Staff profiles show the course. |
| `ContentHighlight` | Localized, required | Short description below University. |
| `Content` | Localized | Stored but not displayed. |
| `Link` | Shared | Clickable URL below the course text. |
| `Tags` | Shared | Stored; not printed. |
| `Slug` | Localized | Stored; there is no current standalone Course page. |
| `Image` | Shared | Stored; not displayed. |
| `Year` | Shared | Stored; not displayed or used for ordering. |
| `Semester` | Shared | Stored; not displayed or used for ordering. |

## Publication

Publication records are visible through related Staff profiles in a Publications tab.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Description` | Localized, required | Full rich-text citation/description. |
| `Link` | Shared | Clickable URL below the description. |
| `Tags` | Shared | Stored; not printed. |
| `Staff` | Relation | Determines which Staff profiles show the publication. |

## URL Redirects

Redirect records are fetched when the frontend website builds. They do not appear as visible content; they instruct browsers to move an old path to a new one.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `From` | Required | Old source path, beginning with `/`. Wildcards may use frontend syntax such as `/blog/:slug*`. |
| `To` | Required | Destination path or complete external URL. |
| `Permanent` | Required | Intended to select a permanent redirect, but **not currently read by the frontend** because it expects `StatusCode`. |

After publishing a redirect, the frontend must be rebuilt/redeployed before it takes effect. Test both the exact old path and any wildcard example.

!!! warning
    The current frontend treats redirects as temporary because of the `Permanent`/`StatusCode` field mismatch. Coordinate permanent redirect changes with a developer.
