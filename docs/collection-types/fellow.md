# Fellow

Use **Fellow** for visiting and alumni fellows.

## Where Fellow records appear

| Website location | Presentation |
| --- | --- |
| Academics → Visiting Fellows | Portrait card when EndDate is today or later |
| Academics → Alumni Fellows | Paginated portrait card when EndDate is today or earlier |
| `/academics/fellows/{slug}` | Profile with affiliation, research topic, program, duration, biography, and portrait |

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Name` | Localized, required | Card, profile heading/caption, metadata | Public display name. |
| `FellowshipProgram` | Localized, required | Profile detail | Labelled fellowship-program value. |
| `StartDate` | Shared, required | Profile duration | Start of displayed date range. |
| `EndDate` | Shared, required | Profile duration and visiting/alumni classification | Determines which listing contains the Fellow. |
| `Bio` | Localized | Profile body | Rich-text biography. |
| `Image` | Localized, required | Card, profile portrait, metadata | Portrait artwork. |
| `ResearchTopic` | Localized, required | Card and profile detail | Main research topic. |
| `Affiliation` | Localized, required | Card subtitle, profile subtitle, metadata | Institutional affiliation. |
| `FirstName` | Localized | API sorting only | Secondary alphabetical sort field; not printed directly. |
| `LastName` | Localized | API sorting only | Primary alphabetical sort field; not printed directly. |
| `Slug` | Localized, required | Profile URL | Final path segment. |
