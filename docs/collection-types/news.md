# News

Use **News** for institutional news items.

## Where News records appear

| Website location | Presentation |
| --- | --- |
| Homepage News carousel | Card; newest OriginalCreationDate first |
| News listing | Paginated/filterable card grid |
| `/news/{slug-or-id}` | Detail page with image header, date, author area, component body, and Related Materials |
| Related Materials elsewhere | News card |

### Homepage News carousel example

![The homepage News carousel showing three cards with profile-coloured icon tiles, activity labels, dates, titles, images, and summaries](../assets/news-homepage-carousel-example.png)

*Published News records become cards in the homepage carousel. `Image`, `Title`, and `CardText` provide the main content; `OriginalCreationDate` supplies the date; `ActivityType` supplies the label and icon; and `Profile` supplies the coloured square behind the icon.*

### Activity type icons

The News card prints the localized `ActivityType` label above the title and displays its icon over the lower-left corner of the image. The icon itself is black; the background square uses the record's [Profile colour](../profiles.md).

| Strapi `ActivityType` value | Card icon | Icon used |
| --- | :---: | --- |
| `Academic News` | ![Academics category icon](../assets/profile-academics.svg){ .activity-type-icon } | Academics category |
| `Announcement` | ![Announcement icon](../assets/announcement.svg){ .activity-type-icon } | Announcement |
| `Archivum News` | ![Archivum category icon](../assets/profile-archivum.svg){ .activity-type-icon } | Archivum category |
| `Book Launch` | ![Book launch icon](../assets/book_launch.svg){ .activity-type-icon } | Book launch |
| `Collections News` | ![Collections category icon](../assets/profile-collections.svg){ .activity-type-icon } | Collections category |
| `Community` | ![Community icon](../assets/community.svg){ .activity-type-icon } | Community |
| `Conference` | ![Conference icon](../assets/conference.svg){ .activity-type-icon } | Conference |
| `Education Program` | ![Education program icon](../assets/edupro.svg){ .activity-type-icon } | Education program |
| `Exhibition` | ![Exhibition icon](../assets/exhibition.svg){ .activity-type-icon } | Exhibition |
| `Film Screening` | ![Film screening icon](../assets/film_screening.svg){ .activity-type-icon } | Film screening |
| `Guided Tour` | ![Talk icon](../assets/talk.svg){ .activity-type-icon } | Talk/speech |
| `Internship` | ![Internship icon](../assets/internship.svg){ .activity-type-icon } | Internship |
| `Job` | ![Job icon](../assets/job.svg){ .activity-type-icon } | Job |
| `Join Us` | ![Join us icon](../assets/join_us.svg){ .activity-type-icon } | Join us |
| `Lecture` | ![Talk icon](../assets/talk.svg){ .activity-type-icon } | Talk/speech |
| `Library` | ![Library icon](../assets/library.svg){ .activity-type-icon } | Library |
| `Music` | ![Music icon](../assets/music.svg){ .activity-type-icon } | Music |
| `Partner Projects` | ![Partner projects icon](../assets/partner_projects.svg){ .activity-type-icon } | Partner projects |
| `Performance` | ![Theatre icon](../assets/theatre.svg){ .activity-type-icon } | Theatre |
| `Program Series` | ![Program series icon](../assets/program_series.svg){ .activity-type-icon } | Program series |
| `Public Program News` | — | **No icon is currently mapped by the frontend.** |
| `Publication` | ![Publication icon](../assets/publication.svg){ .activity-type-icon } | Publication |
| `Research` | ![Research icon](../assets/research.svg){ .activity-type-icon } | Research |
| `Roundtable` | ![Roundtable icon](../assets/round_table.svg){ .activity-type-icon } | Roundtable |
| `Scholarship` | ![Scholarship icon](../assets/scholarship.svg){ .activity-type-icon } | Scholarship |
| `Talk` | ![Talk icon](../assets/talk.svg){ .activity-type-icon } | Talk/speech |
| `Theatre` | ![Theatre icon](../assets/theatre.svg){ .activity-type-icon } | Theatre |
| `University Course` | ![University course icon](../assets/university_course.svg){ .activity-type-icon } | University course |
| `Workshop` | ![Workshop icon](../assets/workshop.svg){ .activity-type-icon } | Workshop |

!!! warning
    Avoid `Public Program News` when an icon is required on the card. The current frontend does not map this value to an icon, and its multi-word label lookup is also inconsistent with the available translation key.

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `Title` | Localized, required | Card, detail header, metadata, related card | Public headline. |
| `Image` | Shared, required | Cards, detail header, social preview | Main news artwork. |
| `CardText` | Localized, required | Cards, social description, related card | Teaser summary; truncated on cards. |
| [`Profile`](../profiles.md) | Localized, required | Card/detail colour and list filtering | Selects Archivum, Collections, Academic, or Public presentation. |
| `Tags` | Localized | No visible page element | Stored for classification/search. |
| `Content` | Localized, required | Detail body | Ordered dynamic-zone body. |
| `Slug` | Localized | Detail URL | Preferred path; numeric ID is fallback. |
| `Author` | Localized | Detail author area | Plain-text author. |
| `AuthorStaff` | Relation | Detail author badge | Links one Staff author. |
| [`ActivityType`](#activity-type-icons) | Localized, required | Card label/icon and filters | Selects the translated activity label and mapped icon. `Public Program News` currently has no mapped icon. |
| `OriginalCreationDate` | Localized | Card/detail date and ordering | Preferred publication date; creation date is fallback. |
| `rank` | Shared | Not displayed/used | Current News queries sort by date, not rank. |
| `RelatedCollections`, `RelatedEntries`, `RelatedEvents`, `RelatedPages`, `RelatedProjects` | Relations | Related Materials | Adds corresponding cards. |
| `RelatedNewsSource`, `RelatedNewsDesination` | Self-relations | Related Materials | Adds other News cards, subject to the current misspelled destination-field mismatch. |

!!! warning
    The schema spells `RelatedNewsDesination` without “t”, while the related-material renderer expects `RelatedNewsDestination`. Verify self-related News cards on the public page.
