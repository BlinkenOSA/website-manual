# Staff

Use **Staff** for staff directory records, public profiles, and Entry author relationships.

## Where Staff records appear

| Website location | Presentation |
| --- | --- |
| About Us → Staff | Filterable portrait card with name, position, and unit |
| `/about-us/staff/{slug}` | Profile with name, position, unit, email, biography, portrait, and activity tabs |
| Entry detail page | Author badge when linked through AuthorStaff |
| Staff profile tabs | Related Courses, Publications, Entries, and Appearances |

### Staff directory card example

![Three Staff directory cards showing portraits, names, positions, and organizational units](../assets/staff-card-example.png)

*Each directory card uses `Image` for the portrait, `FirstName` and `LastName` for the name, `Position` for the role, and `Unit` for the organizational unit. Selecting a card opens that staff member’s profile at its `Slug`.*

### Reverse-side activity relations

`Appearances`, `Courses`, and `Publications` on a Staff record are the reverse sides of the `Staff` relation on those content types. Link the staff member on an [Appearance](appearance.md), [Course](course.md), or [Publication](publication.md) record; the linked item then appears in the corresponding Staff profile tab. Courses and Publications can be linked to multiple staff members, while an Appearance belongs to one staff member.

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Name` | Localized, required | Entry author badge | Badge display name. Directory/profile instead uses FirstName + LastName. |
| `Image` | Localized | Directory card, profile portrait, author badge, metadata | Use a portrait image. |
| `Position` | Localized, required | Directory card, profile subtitle, metadata | Staff member’s public role. |
| `Bio` | Localized | Profile body | Rich-text biography. |
| `Appearances` | Relation | Profile Appearances tab | Reverse side of Appearance `Staff` (one staff member per Appearance). Tab appears only when at least one record is linked. |
| `Slug` | Localized, required | Profile URL | Final path segment. |
| `Courses` | Relation | Profile Courses tab | Reverse side of Course `Staff` (many-to-many). Tab appears only with related records. |
| `Publications` | Relation | Profile Publications tab | Reverse side of Publication `Staff` (many-to-many). Tab appears only with related records. |
| `Email` | Shared | Profile contact block | Printed below Unit. |
| `Phone` | Shared | Not displayed | Stored but unused by the current profile. |
| `FirstName` | Localized | Directory card, profile heading, sorting | English displays FirstName LastName. |
| `LastName` | Localized | Directory card, profile heading, primary sorting | Hungarian displays LastName FirstName. |
| `Unit` | Localized, required | Directory card/filter and profile contact block | Selects the translated organizational unit. |
| `Entries` | Relation | Profile Blogs tab | Reverse side of Entry AuthorStaff. |

!!! tip
    Complete `Name`, `FirstName`, and `LastName`; the frontend uses them in different places.
