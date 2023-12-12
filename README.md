# CheckMK-Zammad-Notify
CheckMK Add-On: Create Zammad tickets on monitoring events with auto-close and auto-update functions.

## How to configure

You can follow this very good official Zammad documentation, where both .sh-scripts result from: https://admin-docs.zammad.org/de/latest/system/integrations/checkmk/setup-guide.html

In short you can follow these steps:

### CheckMK: package install
This package delivers two new notification methods to CheckMK2:
- Zammad Host: Notify Zammad about host issues
- Zammad Service: Notify Zammad about service issues

Install the MKP package from here: [Link](https://exchange.checkmk.com/u/itweserems)

After this you will have two new notification methods in CheckMK2 Setup > Events > Notifications.

### Zammad: enable integration
In Zammad you must enable the builtin CheckMK integration in Zammad Admin Panel > System > Integrations > Checkmk. Here you can also find the API endpoint URL, which you need to update manually in both .sh-files as mentioned earlier.

### CheckMK: script configuration
Now from Zammad you get your individual API URL, which you **have to manually change** in the following files inside your omd site path:
- local/share/check_mk/notifications/zammad_host.sh
- local/share/check_mk/notifications/zammad_service.sh