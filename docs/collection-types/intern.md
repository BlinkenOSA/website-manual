# Intern

Use **Intern** for current and former archives interns.

## Where Intern records appear

| Website location | Presentation |
| --- | --- |
| Academics → Current Interns | Portrait card when EndDate is missing or today/later |
| Academics → Past Interns | Paginated portrait card when EndDate is today/earlier |
| `/academics/interns/{slug}` | Profile with project, duration, biography, and portrait |

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Name` | Localized, required | Card, profile heading/caption, metadata, list sorting | Public display name. |
| `StartDate` | Shared | Profile duration | Start of displayed date range. |
| `EndDate` | Shared | Profile duration and current/past classification | A missing date remains current. |
| `Bio` | Localized | Profile body | Rich-text biography. |
| `Image` | Shared, required | Card, profile portrait, metadata | Portrait artwork. |
| `Project` | Localized | Card, profile detail, metadata | Internship project title/description. |
| `Slug` | Localized, required | Profile URL | Final path segment. |
