# URL Redirects

Use **URL Redirects** when an existing public path must send visitors to a different path or URL.

## Where records appear

| Website location | Presentation |
| --- | --- |
| No visible page | Next.js fetches published redirect records when the website builds and turns them into HTTP redirects |

Publishing a redirect in Strapi is not enough: the website must be rebuilt/redeployed before it takes effect.

## Field-to-frontend map

| Strapi field | [Scope](index.md#field-scope) | Where on the frontend | Display and editorial effect |
| --- | --- | --- | --- |
| `From` | Required | Next.js redirect source | Old path beginning with `/`; may use Next.js wildcard syntax such as `/blog/:slug*`. |
| `To` | Required | Next.js redirect destination | New internal path or complete external URL. |
| `Permanent` | Required | Intended redirect status | Current frontend does not read it because it expects a field named `StatusCode`; generated redirects are therefore temporary. |

!!! warning
    Coordinate redirects with a developer. Test the old path after deployment, especially when using a wildcard or when search engines must recognize a permanent move.
