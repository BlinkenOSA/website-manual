# Website editorial manual

This manual explains how editors create and maintain content for the Blinken OSA Archivum website. The website has two main parts:

- **Strapi 4** is the backend content management system. Editors create, translate, relate, and publish records there.
- **Frontend** is the public website. It requests published records from Strapi and decides where and how every field appears.

The distinction matters: a field can exist in Strapi without being visible on the website. The collection-type reference in this manual describes the **current website behaviour**, including fields that are used only for filtering, links, ordering, metadata, or relations.

## Start here

1. Read [Working in Strapi](working-in-strapi.md) for the normal editing and translation workflow.
2. Check [Profiles and visual identity](profiles.md) to understand the section colours and icons controlled by `Profile`.
3. Use [Content components](components.md) when assembling a page body.
4. Look up the relevant [content type](collection-types/index.md) to see exactly where every field appears on the website.
5. Complete the [publishing checklist](publishing-checklist.md) before publishing.

## Content model at a glance

| Group | Collection types | Main purpose |
| --- | --- | --- |
| Editorial pages | Page, Collection, Project, Entry, News, Event, External Page, Annual Report | Public pages, cards, detail pages, calendar entries, annual reports, and related material |
| People and opportunities | Staff, Appearance, Course, Publication, Fellow, Intern, Job | Profiles, staff activity tabs, vacancies, and internships |
| Homepage and site administration | Home Page Carousel, Credo, URL Redirects | Homepage-specific panels and URL management |

## Terminology used in this manual

**Collection type**
: A repeatable kind of Strapi record, such as Event or Staff.

**Component**
: A reusable group of fields. Components in a dynamic zone become visible page sections.

**Dynamic zone / Content**
: The ordered page builder. Editors add, remove, and reorder components to make the body of a page.

**Localized**
: Each language has its own value. Complete the field in both English and Hungarian.

**Shared**
: One value is used by every locale. Changing it in one locale affects the record as a whole.

**Related material**
: Links between records. On supported detail pages these become a card carousel below the main content.

!!! note "Source of truth"
    This manual was prepared from the Strapi schemas and the website rendering code. When either application changes, update the corresponding table here.
