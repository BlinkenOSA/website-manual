# Content types

Each Strapi collection type has its own reference page. Use these pages to see **where a record appears on the public website** and **which frontend element reads each field**.

## Field scope

The **Scope** column in every field table describes whether a value belongs to one language or to the whole record.

| Scope | Meaning |
| --- | --- |
| **Localized** | English and Hungarian have separate values. Complete and check the field independently in each locale. |
| **Shared** | One value is used by every locale. Changing it affects the record as a whole. |

Publishing is still locale-specific: each language version must be published separately, even when all of its fields are shared. See [Localized and shared fields](../working-in-strapi.md#localized-and-shared-fields) for the translation workflow.

## Pages and editorial content

| Content type | Main website locations |
| --- | --- |
| [Page](page.md) | Frontend-mapped About Us, Collections, and Academics pages; page headers, body content, Related Materials |
| [Collection](collection.md) | Homepage carousel, collection listings, collection details |
| [Project](project.md) | Academic, archival, partner, and public-project listings and details |
| [Entry](entry.md) | Homepage Entries carousel, Entries listing, blog/podcast/video details |
| [News](news.md) | Homepage News carousel, News listing, news details |
| [Event](event.md) | Homepage Events panel, Program Calendar, event details |
| [External Page](external-page.md) | Fixed partner/service landing pages |
| [Annual Report](annual-report.md) | Annual Reports page |

## People and opportunities

| Content type | Main website locations |
| --- | --- |
| [Staff](staff.md) | Staff directory, staff profiles, author badges |
| [Appearance](appearance.md) | Staff profile Appearances tab |
| [Course](course.md) | Staff profile Courses tab |
| [Publication](publication.md) | Staff profile Publications tab |
| [Fellow](fellow.md) | Visiting and alumni fellow listings and profiles |
| [Intern](intern.md) | Current and past intern listings and profiles |
| [Job](job.md) | Jobs and Internships listing and detail pages |

## Homepage and site administration

Home Page Carousel and Credo are the only collection types dedicated exclusively to homepage sections. Other homepage panels reuse published records from [Collection](collection.md), [Entry](entry.md), [News](news.md), and [Event](event.md), rendering them as cards.

| Content type | Main website locations |
| --- | --- |
| [Home Page Carousel](home-page-carousel.md) | Homepage hero slides |
| [Credo](credo.md) | Homepage “We are…” carousel |
| [URL Redirects](url-redirects.md) | Build-time URL forwarding; no visible page |

!!! note
    “Not displayed” in a field table describes the current frontend implementation. The value may still be retained for administration, search, or future development.
