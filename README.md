## TACC Custom CMS

https://cep.tacc.utexas.edu/

> [!IMPORTANT]
> After creating a repository from [Core CMS Template]:
>
> 1. In this doc:
>    1. Rename "TACC Custom CMS" to the name of this project.
>    2. Change https://cep.tacc.utexas.edu/ to URL of this project's website.
> 2. Replace `custom-cms` with the name of this project's CMS image, in:
>    - `.github/workflows/build.yml`
>    - `cms/Makefile`
> 3. Delete `/docs` directory (so it does not become outdated).
> 4. Follow [Core CMS Template's "Set Up Project"][core-cms-template-setup].
> 5. Adapt or Remove "[Quick Start](#quick-start)" according to your project.
> 6. **Delete this notice.**

## Quick Start

Follow [Core CMS Template's "Start Project"][core-cms-template-start].

## Documentation

> [!TIP]
> This project is built as a customization of a TACC <abbr title="Content Management System">CMS</abbr> website. To manage this project's CMS, reference [Core-CMS-Template Docs][core-cms-template-docs]. To develop this project's custom code, keep reading.

> [!IMPORTANT]
> After creating a repository from [Core CMS Template]:
>
> 1. Document how to develop this project.
> 2. Remove this notice.


<!-- Link Aliases -->

[Core CMS]: https://github.com/TACC/Core-CMS
[Core CMS Template]: https://github.com/TACC/Core-CMS-Template
[Core Portal Deployments]: https://github.com/TACC/Core-Portal-Deployments

[core-cms-template-setup]: https://github.com/TACC/Core-CMS-Template/blob/v0.3.1/docs/create-project.md#set-up-project
[core-cms-template-start]: https://github.com/TACC/Core-CMS-Template/blob/v0.3.1/docs/start-project.md#start-project
[core-cms-template-docs]: https://github.com/TACC/Core-CMS-Template/blob/v0.3.1/docs/README.md#tacc-custom-cms
