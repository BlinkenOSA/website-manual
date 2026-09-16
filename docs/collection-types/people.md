# People and opportunities

## Staff

Use **Staff** for staff directory cards, profile pages, Entry author badges, and the person-specific Courses, Publications, Entries, and Appearances tabs.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Name` | Localized, required | Used on Entry author badges. The staff directory/profile uses FirstName and LastName instead. |
| `Image` | Localized | Portrait on directory cards/profile and author badge. |
| `Position` | Localized, required | Directory card, profile subtitle, and social description. |
| `Bio` | Localized | Rich-text biography on the profile. |
| `Appearances` | Relation | Creates the Appearances tab when at least one record is linked. |
| `Slug` | Localized, required | Staff profile URL. |
| `Courses` | Relation | Creates the Courses tab. |
| `Publications` | Relation | Creates the Publications tab. |
| `Email` | Shared | Printed below unit on the profile. |
| `Phone` | Shared | Stored but not displayed by the current profile. |
| `FirstName` | Localized | Display name and directory sort key. English displays FirstName LastName. |
| `LastName` | Localized | Display name and primary directory sort key. Hungarian displays LastName FirstName. |
| `Unit` | Localized, required | Directory filter/card and translated unit on the profile. |
| `Entries` | Relation | Creates the Blogs tab and is the reverse of Entry `AuthorStaff`. |

!!! tip
    Complete `Name`, `FirstName`, and `LastName`. They serve different frontend views and should not be assumed to substitute for one another.

## Fellow

Use **Fellow** for Visiting Fellows and Alumni Fellows. Whether a fellow is current or alumni is calculated from `EndDate` relative to today's date.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Name` | Localized, required | Card and profile heading/caption. |
| `FellowshipProgram` | Localized, required | Labelled value on the profile. |
| `StartDate` | Shared, required | Start of the displayed duration. |
| `EndDate` | Shared, required | End of displayed duration and current/alumni classification. |
| `Bio` | Localized | Rich-text profile body. |
| `Image` | Localized, required | Portrait card/profile and social image. |
| `ResearchTopic` | Localized, required | Card text and labelled value on the profile. |
| `Affiliation` | Localized, required | Card subtitle, profile subtitle, and social description. |
| `FirstName` | Localized | Used for alphabetical API sorting after LastName; not directly printed. |
| `LastName` | Localized | Primary alphabetical API sort field; not directly printed. |
| `Slug` | Localized, required | Fellow profile URL. |

## Intern

Use **Intern** for Current Interns and Past Interns. Classification is calculated from `EndDate`.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Name` | Localized, required | Card and profile heading/caption; list sorting. |
| `StartDate` | Shared | Start of the displayed duration. |
| `EndDate` | Shared | End of duration and current/past classification. A missing date remains current. |
| `Bio` | Localized | Rich-text profile body. |
| `Image` | Shared, required | Portrait card/profile and social image. |
| `Project` | Localized | Card text, labelled profile value, and social description. |
| `Slug` | Localized, required | Intern profile URL. |

## Job

Use **Job** for both vacancies and internships on the Jobs and Internships page. The list is divided/filtered with `JobType`.

| Field | Scope | Website display or effect |
| --- | --- | --- |
| `Title` | Localized | List-card and detail heading, browser/social title. |
| `Image` | Shared, required | Used as social metadata on the detail page; not visibly rendered in the current page layout. |
| `JobType` | Shared, required | Separates Job and Internship records in listing queries. |
| `ContentHighglight` | Localized, required | Schema field with a spelling mismatch. The frontend requests `ContentHighlight`, so this teaser is **currently not displayed**. |
| `Content` | Localized, required | Rich-text body on the detail page. |
| `StartingDate` | Localized | Labelled value on list cards and detail page. |
| `Duration` | Localized | Labelled value on list cards and detail page. |
| `Location` | Localized | Labelled value on list cards and detail page. |
| `ContractType` | Localized, required | Translated Full-Time/Part-Time label on list cards and detail page. |
| `Salary` | Localized | Labelled value on list cards and detail page. |
| `Slug` | Localized | Detail-page URL. |
| `ApplicationDeadline` | Localized | Shown on the detail page only. |

!!! warning "Current field mismatch"
    Until the schema or frontend is corrected, editors cannot make the Job teaser appear through the required `ContentHighglight` field. The issue is listed in [Implementation notes](../implementation-notes.md).
