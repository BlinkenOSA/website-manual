# Project

Use **Project** for Academic, Archival, Partner, and Public projects.

## Where Project records appear

| Website location | Presentation |
| --- | --- |
| Academic current/completed project pages | Project cards filtered by `Profiles` and EndDate year |
| Collections → Archival Projects | Project cards filtered by Archival profile |
| About Us → Partner Projects | Project cards filtered by Partner profile |
| Public Programs → Public History Projects | Project cards filtered by Public profile |
| Project detail route | Header, component body, optional external-project button, Related Materials |
| Related Materials elsewhere | Project card; routing uses the first Profiles value |

### Archival Project cards example

![Two Archival Project cards with images, titles, summaries, orange Project website buttons, and Learn more buttons](../assets/project-archival-cards-example.png)

*Projects classified as `Archival` in `Profiles` appear in Collections → Archival Projects. Each card uses `Image`, `Title`, and `CardText`. The orange “Project website” button appears when `Link` is set, with `ButtonText` or the default label; “Learn more” opens the project detail page. Here `Archival` determines listing membership, while the Collections route supplies the orange card styling.*

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Title` | Localized, required | Cards, detail heading, metadata, related card | Public project name. |
| `Image` | Localized, required | Card, detail header, social preview | Main project artwork. |
| `StartDate` | Shared DateApprox., repeatable | Classification query only | Used with EndDate for Academic filtering; not printed. |
| `EndDate` | Shared DateApprox., repeatable | Current/completed Academic filtering | The year determines current versus completed; not printed. Missing EndDate is included by the completed query. |
| `Language` | Shared | Not displayed | Stored but unused by current project views. |
| `HostType` | Shared | Not displayed | Stored but unused by current project views. |
| `CardText` | Localized, required | Cards and social description | Short project summary. |
| `ContentOld` | Localized, required | Not displayed | Legacy field; required by Strapi but not rendered. |
| `Link` | Shared | Card and detail page | Destination of the external-project button. |
| `Tags` | Shared | No visible page element | Stored for classification/search. |
| `Slug` | Localized, required | Detail URL | Final path segment. |
| `Profiles` | Localized, required | Listing membership and routing | Values: Academic, Archival, Partner, Public. First value controls Related Materials routing. |
| `ButtonText` | Localized | External-project button | Custom label; the detail page supplies a translated default when empty. |
| `Content` | Localized | Detail body | Actual visible component body. |
| `RelatedCollections`, `RelatedEntries`, `RelatedEvents`, `RelatedNews`, `RelatedPages` | Relations | Related Materials | Adds corresponding cards. |
| `RelatedProjectsSource`, `RelatedProjectsDestination` | Self-relations | Related Materials | Adds other Project cards. |

!!! warning
    Build the detail page in `Content`, not `ContentOld`. Check the first Profiles value because it affects related-card URLs.
