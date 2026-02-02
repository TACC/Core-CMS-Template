## TACC Custom CMS

A [Core CMS] project with **custom functionality**

## Table of Contents

- [Related Repositories](#related-repositories)
- [Project Architecture](#project-architecture)
- [Prerequisites](https://github.com/TACC/Core-CMS#prerequisites)
- [Create Project](./create-project.md)
- [Start Project](./start-project.md)
- [Configure Project](./configure-project.md)
- [Run Project](./run-project.md)
- [Update Project](./update-project.md)
- [Build Project](./build-project.md)
- [Deploy Project](https://tacc-main.atlassian.net/wiki/x/cwVv)

## Related Repositories

- [Core CMS], the base CMS code for TACC WMA CMS Websites
- [Core CMS Custom], custom assets for TACC WMA CMS Websites
- [Core Portal Deployments], configure deployment of TACC WMA CMS Websites

Known Clients:
- [TACC/Texascale-CMS](https://github.com/TACC/Texascale-CMS)
- [TACC/APCD-CMS](https://github.com/TACC/APCD-CMS)
- [TACC/CTRN-CMS](https://github.com/TACC/CTRN-CMS)
- [TACC/tup-ui](https://github.com/TACC/tup-ui)

## Project Architecture

Within `/cms/` can be:

| Directory | Contents |
| - | - |
| `src/apps` | additional Django applications |
| `src/taccsite_cms` | settings for [Core CMS], additional apps, static assets, or middleware |
| `src/taccsite_custom` | templates and static assets, organized as Django CMS expects |


<!-- Link Aliases -->

[Core CMS]: https://github.com/TACC/Core-CMS
[Core CMS Custom]: https://github.com/TACC/Core-CMS-Custom
[Core Portal Deployments]: https://github.com/TACC/Core-Portal-Deployments
