# Course

Use **Course** for courses taught by one or more Staff members.

## Where records appear

| Website location | Presentation |
| --- | --- |
| Related Staff profile → Courses tab | Text item with title, university, highlight, and optional link |

There is no current standalone Course page. The tab exists only when a Staff record has related Courses.

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Title` | Localized, required | Staff Courses tab | Course heading. |
| `University` | Localized, required | Staff Courses tab | Printed below Title. |
| `Staff` | Relation | Staff profile selection | Determines which profiles contain the course. |
| `ContentHighlight` | Localized, required | Staff Courses tab | Short description below University. |
| `Content` | Localized | Not displayed | Stored but unused by the current tab. |
| `Link` | Shared | Staff Courses tab | Clickable URL below the text. |
| `Tags` | Shared | Not displayed | Stored for classification/search. |
| `Slug` | Localized | Not used for routing | No standalone Course route exists. |
| `Image` | Shared | Not displayed | Stored but unused by the current tab. |
| `Year` | Shared | Not displayed/used for ordering | Stored only. |
| `Semester` | Shared | Not displayed/used for ordering | Stored only. |
