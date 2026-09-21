# Publishing checklist

Use this checklist for every new record and substantial update.

## Content

- [ ] The correct collection type was used.
- [ ] Title or name is complete and does not repeat unnecessarily in the body.
- [ ] Teaser fields such as `CardText`, `DescriptionShort`, or `ContentHighlight` are concise and make sense outside the detail page.
- [ ] Dates, times, locations, names, and external facts have been checked.
- [ ] Heading levels and lists use rich-text structure correctly.
- [ ] Link text is descriptive and every destination opens successfully.
- [ ] No placeholder or duplicated content remains.

## Page structure

- [ ] The visible body was entered in the field the frontend renders.
- [ ] Dynamic-zone components are in the intended order.
- [ ] ContentImage placement was selected deliberately.
- [ ] YouTube components contain a supported YouTube URL and caption. (No extra parameters at the end of the URL.)
- [ ] PDFs open and download; their size is reasonable.
- [ ] IFrames have been tested on desktop and mobile.

## Media and accessibility

- [ ] Header/card image has the right orientation and a useful crop.
- [ ] Images are optimized and not larger than necessary.
- [ ] Media-library alternative text is meaningful.
- [ ] Visible captions and credits are included where needed.
- [ ] The page does not communicate essential meaning through an image alone.
- [ ] PDFs have an accessible reading order and selectable text where possible.

## Classification, URLs, and relations

- [ ] Slug is lowercase, hyphenated, and stable.
- [ ] Profile/type options are correct; the first value is correct where order controls routing.
- [ ] `rank` values place homepage content in the intended order.
- [ ] Relations point to published records and add genuine value.
- [ ] Changing an existing public slug is paired with a redirect and developer/redeployment coordination.

## Languages

- [ ] English record is complete and published.
- [ ] Hungarian record is complete and published.
- [ ] Both localized slugs lead to the intended page.
- [ ] Shared fields are appropriate for both locales.
- [ ] Buttons, captions, summaries, and metadata are translated—not just the main body.

## Final website check

- [ ] Open the public detail page in both languages.
- [ ] Check the record's list card and, when applicable, homepage card.
- [ ] Test at mobile and desktop widths.
- [ ] Check related-material cards.
- [ ] Test registration, Zoom, download, external, and call-to-action buttons.
- [ ] Confirm that the record is in the correct list/filter and current/past section.

!!! tip
    If a saved value does not appear, first confirm the locale is published, then check the field table. Some Strapi fields are stored but not rendered by the current frontend.
