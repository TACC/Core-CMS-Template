# Configure Project

- [Remove Excess Content](#remove-excess-content)
- [Customize Website Settings](#customize-website-settings)
- [Configure Build Action](#configure-build-action)
- Consider other changes, e.g.
    - [Create a Custom App](#create-a-custom-app)

## Remove Excess Content

> [!NOTE]
> [Core CMS] supports standard TACC apps, URLs, and static asset directories. Consider its capabilities before creating something new.

| <u>If</u> Project Does Not Need: | <u>Then</u> Delete: |
| - | - |
| additional apps | the directory `apps/` & the `COPY /src/apps /code/taccsite_cms/apps` in `Dockerfile` |
| URLs for custom apps | `/cms/src/taccsite_cms/urls_custom.py` |
| Core-CMS settings for custom apps | `/cms/src/taccsite_cms/custom_app_settings.py` |

## Customize Website Settings

| Intent | File to Update |
| - | - |
| Test | `/cms/src/taccsite_cms/settings_custom.py` |
| Deploy | [TACC/Core-Portal-Deployments][Core Portal Deployments]:`/project_dir/camino/settings_custom.py` |

The settings most overridden are `PORTAL_LOGO` and `..._BRANDING`.

To know what settings are typically customized, see [TACC/Core-CMS:`/…/settings_custom.example.py`](https://github.com/TACC/Core-CMS/blob/main/taccsite_cms/settings_custom.example.py). To know all settings are available, see [TACC/Core-CMS:`/…/settings.py`](https://github.com/TACC/Core-CMS/blob/main/taccsite_cms/settings.py).

## Configure Build Action

1. Get `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` from [Stache secret](https://stache.utexas.edu/entry/fcf7c3b8029c98f8e8c16d9f7e0e81eb).
2. [Create repository secrets](https://docs.github.com/en/actions/security-for-github-actions/security-guides/using-secrets-in-github-actions#creating-secrets-for-a-repository) for `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN`.

## Create a Custom App

- Update `custom_app_settings.py` with pertinent content from [TACC/Core-CMS:`/taccsite_cms/custom_app_settings.example.py`](https://github.com/TACC/Core-CMS/blob/1d88c35/taccsite_cms/custom_app_settings.example.py).
- Update `urls_custom.py` with pertinent content from [TACC/Core-CMS:`/taccsite_cms/urls_custom.example.py`](https://github.com/TACC/Core-CMS/blob/1d88c35/taccsite_cms/urls_custom.example.py).
- If your custom app needs to host React UI, see [`docs/react-custom-app.md`](react-custom-app.md).


<!-- Link Aliases -->

[Core CMS]: https://github.com/TACC/Core-CMS
[Core CMS Template]: https://github.com/TACC/Core-CMS-Template
[Core Portal Deployments]: https://github.com/TACC/Core-Portal-Deployments
