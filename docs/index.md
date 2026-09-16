# Website editorial manual

This manual explains how editors create and maintain content for the Blinken OSA Archivum website. The website has two main parts:

- **Strapi 4** is the backend content management system. Editors create, translate, relate, and publish records there.
- **Frontend** is the public website. It requests published records from Strapi and decides where and how every field appears.

The distinction matters: a field can exist in Strapi without being visible on the website. The collection-type reference in this manual describes the **current website behaviour**, including fields that are used only for filtering, links, ordering, metadata, or relations.

## Start here

1. Read [Working in Strapi](working-in-strapi.md) for the normal editing and translation workflow.
2. Use [Content components](components.md) when assembling a page body.
3. Look up the relevant [collection type](collection-types/editorial-content.md) before creating a record.
4. Complete the [publishing checklist](publishing-checklist.md) before publishing.

## Content model at a glance

| Group | Collection types | Main purpose |
| --- | --- | --- |
| Editorial pages | Page, Collection, Project, Entry, News, Event, External Page | Public pages, cards, detail pages, calendar entries, and related material |
| People and opportunities | Staff, Fellow, Intern, Job | Profiles, staff activity tabs, vacancies, and internships |
| Homepage and supporting data | Home Page Carousel, Credo, Annual Report, Appearance, Course, Publication, URL Redirects | Homepage panels, annual-report cards, staff tabs, and URL management |

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
