# Shopware Academy

This repository provides contents (articles) for Learning paths, courses and units for Shopware Academy.

Contents of this repository are zipped and uploaded to the Community Hub on-demand with the help of the [Ingest](./github/workflows/ingest.yml) workflow. This way we can deploy contents from any branch at any time.

For the article to be accepted by the endpoint, it must be located in one of the following directories:
- `./*/index.md` - for Learning paths
- `./*/*/index.md` - for Learning courses of a Learning path
- `./*/*/(\d\d)*.md` - for Learning units of a Learning course

In addition to that, the article must have the following frontmatter data set:

```yaml
title: "String"
slug: "identifier-of-the-level-unique-across-the-academy"
description: "String"
icon: "String"
visibility: "public" # or "unlisted" or anything else to skip the ingestion
xp: 1 # or object with path, course and unit keys to change the value for all sublevels
# for Paths
role: "developer" # or "designer"
experience: "beginner" # or "intermediate" or "advanced"
# for Courses
badge: {} # TBD
# for 
authors: [] # TBD
version: "v1.0.0" # version of the article
shopware:
  min: "v6.5.0.0" # minimum supported Shopware version
  max: "v6.7" # maximum supported Shopware version (optional?)
```

Articles are matched by their `slug`, Learning units are additionally versioned by the `version` field. The ingestion endpoint is responsible for creating and updating articles, while Community Hub Admin should provide a way to delete selected articles. This strategy allows us to do partial (single-article) updates if necessary.

Progress:
- [X] Ingestion pipeline
- [X] Ingestion endpoints
- [X] Demo data
- [ ] Rename existing files to match the new structure
- [ ] Strict article validation
- [ ] Dry-run endpoint