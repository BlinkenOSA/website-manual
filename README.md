# Blinken OSA website editorial manual

The manual is an MkDocs site. Its source pages live in `docs/` and its navigation is configured in `mkdocs.yml`.

## Local preview

```sh
python3 -m venv .venv
. .venv/bin/activate
python -m pip install -r requirements.txt
mkdocs serve
```

Open the local address printed by MkDocs. Build the static site with `mkdocs build --strict`.

## Maintenance

The field reference reflects both the Strapi schemas in `website-cms/src/api` and the Next.js rendering code in `website/src`. Review both when the content model or frontend changes.
