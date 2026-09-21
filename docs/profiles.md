# Profiles and visual identity

Where a record has a `Profile` setting, the selected value tells the frontend which part of the Archivum website the content belongs to. It is not merely an internal classification: it changes the record's colour styling and category icon.

<div class="profile-grid">
  <div class="profile-card profile-card--archivum">
    <img src="../assets/profile-archivum.svg" alt="Archivum profile icon">
    <div>
      <strong>Archivum</strong>
      <span>About Us · yellow</span>
      <code>#DCCC7A</code>
    </div>
  </div>
  <div class="profile-card profile-card--collections">
    <img src="../assets/profile-collections.svg" alt="Collections profile icon">
    <div>
      <strong>Collections</strong>
      <span>Collections · orange</span>
      <code>#ED8251</code>
    </div>
  </div>
  <div class="profile-card profile-card--academic">
    <img src="../assets/profile-academics.svg" alt="Academics profile icon">
    <div>
      <strong>Academic</strong>
      <span>Academics · blue</span>
      <code>#8AB3B8</code>
    </div>
  </div>
  <div class="profile-card profile-card--public">
    <img src="../assets/profile-public.svg" alt="Public Programs profile icon">
    <div>
      <strong>Public</strong>
      <span>Public Programs · green</span>
      <code>#B3C5B4</code>
    </div>
  </div>
</div>

Use the exact value offered by Strapi:

| Strapi `Profile` value | Website section | Frontend colour | Category icon |
| --- | --- | --- | --- |
| `Archivum` | About Us | Yellow / mustard | Archivum |
| `Collections` | Collections | Orange | Collections |
| `Academic` | Academics | Blue / aqua | Academics |
| `Public` | Public Programs | Green / sage | Public Programs |

## Credo uses `Type`

Credo records call this setting `Type` instead of `Profile`, but it serves the same visual purpose: it selects the slide's section colour and decorative category graphic. The option labels are slightly different:

| Credo `Type` value | Equivalent visual profile |
| --- | --- |
| `Archivum` | `Archivum` |
| `Collection` | `Collections` |
| `Academics` | `Academic` |
| `Public Programs` | `Public` |

Unlike the shared `Profile` field on most content types, Credo `Type` is localized. Select the corresponding value in both English and Hungarian so the slide keeps the same visual identity in each locale.

## What the profile changes

Depending on the page and component, the profile controls:

- link underlines and link-hover backgrounds within the page content;
- the coloured quotation mark used by the Quote component;
- the colour of DividerLine;
- the icon and colour used by DividerIcon;
- colours and icons on cards, headers, filters, and other section-aware elements.

The content itself does not change when a profile is changed, but its visual identity and section association can. Always choose the profile that matches the section where the record should appear.

!!! note
    Static section pages without an editable `Profile` field receive their profile from their frontend route. For example, pages under About Us use Archivum styling, while pages under Collections use Collections styling.

## Where editors select a profile

The singular `Profile` field is currently available on Entry, Event, News, and Home Page Carousel records. Credo provides the equivalent setting under [`Type`](collection-types/credo.md). See the relevant [content-type page](collection-types/index.md) for the field's additional effects on placement, filtering, and URLs.

Do not confuse `Profile` with the Project field named `Profiles`. Project `Profiles` is a multi-select classification used for project grouping and routing; it is not the same four-value visual profile selector.
