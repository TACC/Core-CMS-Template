## TACC Custom CMS

https://cep.tacc.utexas.edu/

> [!IMPORTANT]
> After creating a repository from [Core CMS Template]:
>
> 1. In this doc:
>    1. Rename "TACC Custom CMS" to the name of this project.
>    2. Change https://cep.tacc.utexas.edu/ to URL of this project's website.
> 2. In these files —
>
>    - `.github/workflows/build.yml`
>    - `cms/Makefile`
>
>    — replace `custom-cms` with the name of this project's CMS image.
> 3. Delete `/docs` directory (so it does not become outdated).
> 4. [Start the project.][core-cms-template-start]
> 5. [Configure the project.][core-cms-template-configure]
> 6. Adapt or Remove "[Quick Start](#quick-start)" according to your project.
> 7. [Classify repository with topics][gh-repo-topics]: **`tacc-core-cms-template`**, `django-cms`, `tacc`.
> 8. **Delete this notice.**

## Quick Start

Follow [Core CMS Template's "Start Project"][core-cms-template-start].

## Documentation

> [!TIP]
> This project is built as a customization of a TACC <abbr title="Content Management System">CMS</abbr> website. To manage this project's CMS, reference [Core-CMS-Template Docs][core-cms-template-docs]. To develop this project's custom code, keep reading.

> [!IMPORTANT]
> After creating a repository from [Core CMS Template]:
>
> 1. Document how to develop this project.
> 2. **Delete this notice.**


<!-- Link Aliases -->

[Core CMS]: https://github.com/TACC/Core-CMS
[Core CMS Template]: https://github.com/TACC/Core-CMS-Template
[Core Portal Deployments]: https://github.com/TACC/Core-Portal-Deployments

[core-cms-template-configure]: https://github.com/TACC/Core-CMS-Template/blob/v0.7.2/docs/configure-project.md
[core-cms-template-start]: https://github.com/TACC/Core-CMS-Template/blob/v0.7.2/docs/start-project.md#start-project
[core-cms-template-docs]: https://github.com/TACC/Core-CMS-Template/blob/v0.7.2/docs/README.md#tacc-custom-cms

[gh-repo-topics]: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/classifying-your-repository-with-topics#adding-topics-to-your-repository
