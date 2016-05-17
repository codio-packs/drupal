# Drupal (8.1.1)

## Using the Pack
To use the Pack, we created 2 menu options, which you can find on the right of the menu. These menus can be configured in the `.codio` file.

1. **Configure Project** : When you first come into your Project, select this to complete the configuration of your project.
1. **Preview** : This previews your app. 

**Note:** Do not set the 'Inside Codio' option.

## Configure Drupal
To configure your Drupal Project

1. Go to the Run menu.
1. Select `Configure Project`.

If you prefer to run the configuration script yourself, open the terminal (Tools>Terminal) and enter

    bash drupalconfig.sh

When prompted for the `password:` press Enter.

## Accessing the Drupal Installer 

The Drupal Installer is then used to complete the installation steps. To access the installer

1. Go to the Preview menu.
1. Select `Preview`.

## Further Instructions
Follow all the steps in the installer. On one of the steps, you will be asked for database related information. Enter

1. `drupal` for the database name.
1. `drupaluser` for the username.
1. `password` for the password. 

