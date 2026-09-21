# Page

Use **Page** for standard informational pages in the About Us, Collections, and Academics sections. Unlike News, Events, Entries, or Projects, Page records are not automatically added to a listing or navigation structure.

## How Page routing works

The frontend defines the website structure and menu in code. Its `[slug].js` route for each main section takes the final part of the URL and looks for a published Page record whose `Slug` has exactly that value.

For example, the coded URL `/collections/research-room` is handled by the Collections `[slug].js` route and looks up the Page record with `Slug` set to `research-room`. The section prefix determines the breadcrumb, menu, profile colour, and icon; the Page record supplies the title, header image, body, metadata, and Related Materials.

```text
/collections/research-room
     section       slug
        │            │
        │            └── finds Page where Slug = research-room
        └── applies Collections navigation and visual identity
```

!!! warning "A Page record does not create a route"
    Creating or publishing a Page does not add it to the menu. Conversely, a coded menu URL returns a not-found page when no published Page has the matching slug. A new menu item or a changed menu path therefore requires a coordinated frontend change.

## Current menu-to-Page mapping

These are the menu entries currently handled by the three Page `[slug].js` routes.

### About Us pages

| Menu label | Public path | Required Page `Slug` |
| --- | --- | --- |
| About Us | `/about-us/about-the-archivum` | `about-the-archivum` |
| Founding Director | `/about-us/founding-director` | `founding-director` |
| Vera and Donald Blinken | `/about-us/vera-and-donald-blinken` | `vera-and-donald-blinken` |
| Goldberger House | `/about-us/the-goldberger-house` | `the-goldberger-house` |
| What are archives? | `/about-us/what-are-archives` | `what-are-archives` |
| Visegrad Scholarships | `/about-us/visegrad-scholarship-at-osa` | `visegrad-scholarship-at-osa` |
| Visit Us | `/about-us/visit-us` | `visit-us` |

These pages receive the [Archivum profile](../profiles.md): yellow styling and the Archivum icon.

### Collections pages

| Menu label | Public path | Required Page `Slug` |
| --- | --- | --- |
| About our Collections | `/collections/about-our-collections` | `about-our-collections` |
| Help with your Research | `/collections/help-with-your-research` | `help-with-your-research` |
| Research Room Access | `/collections/research-room` | `research-room` |
| Digitization on Demand | `/collections/digitization-on-demand` | `digitization-on-demand` |
| Thematic Guides | `/collections/thematic-guides` | `thematic-guides` |
| Donate your Archive | `/collections/donate-your-materials` | `donate-your-materials` |

These pages receive the [Collections profile](../profiles.md): orange styling and the Collections icon.

### Academics pages

| Menu label | Public path | Required Page `Slug` |
| --- | --- | --- |
| Our Research | `/academics/our-research` | `our-research` |
| Visegrad Scholarship | `/academics/visegrad-scholarship-at-osa` | `visegrad-scholarship-at-osa` |
| For University Students | `/academics/teaching` | `teaching` |
| For High School Teachers | `/academics/for-high-school-teachers` | `for-high-school-teachers` |
| For Students | `/academics/for-high-school-students` | `for-high-school-students` |
| Publications | `/academics/publications` | `publications` |

These pages receive the [Academics profile](../profiles.md): blue styling and the Academics icon.

## Where Page records appear

| Website location | Presentation |
| --- | --- |
| Section route such as `/about-us/{slug}`, `/collections/{slug}`, or `/academics/{slug}` | Full page with image header, title, component body, and optional Related Materials carousel |
| Related Materials on another supported detail page | Linked card using Title, CardImage, and Slug |
| Browser and social sharing metadata | Title and CardImage |

The same Page lookup mechanism is shared by all three section routes, so the Page record itself does not store its menu section. The coded path prefix decides how it is presented.

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Title` | Localized, required | Page header; browser/social title; related card | Main public title. Do not repeat it as the first heading in Content. |
| `CardImage` | Shared | Page header; social preview; related card | Header/card artwork. Use a strong landscape image. |
| `Tags` | Not explicitly localized | No visible page element | Stored for classification/search. |
| `Content` | Localized, required | Main page body | Ordered dynamic-zone components. See [Content components](../components.md). |
| `Slug` | Localized | Public URL and record lookup | Must match the final segment of its coded menu URL. A different localized slug does not create a new menu route. |
| `RelatedCollections` | Relation | Related Materials carousel | Adds Collection cards below the body. |
| `RelatedEntries` | Relation | Related Materials carousel | Adds Entry cards below the body. |
| `RelatedEvents` | Relation | Related Materials carousel | Adds Event cards below the body. |
| `RelatedNews` | Relation | Related Materials carousel | Adds News cards below the body. |
| `RelatedProjects` | Relation | Related Materials carousel | Adds Project cards below the body. |
| `RelatedPagesSource`, `RelatedPagesDestination` | Self-relations | Related Materials carousel | Adds other Page cards below the body. |

## Before publishing

- Confirm the slug exactly matches the final segment of its mapped menu URL.
- Keep the mapped slug consistent between locales unless the frontend routes are changed to support locale-specific paths.
- Coordinate any live slug change with a frontend menu update and a URL Redirect from the previous path.
- Check the page header, component order, and Related Materials in both languages.
- Treat CardImage as editorially important even though Strapi does not require it.
