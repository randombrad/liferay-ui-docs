# Github
Github.com is where Liferay hosts their source code in several public and private repositories. In each of the major repos has branches that can give you access to different versions of the product.

- liferay-plugins
- liferay-plugins-ee
- liferay-portal
- liferay-portal-ee
- alloy-ui

## Commands
	git rebase -i master
this command will open a list of commits in your text editor and will give you the options similar to the example below:
	pick 2e780eb LPS-25698 - Sample HTML Portlet

	# Rebase b810ccb..2e780eb onto b810ccb
	#
	# Commands:
	#  p, pick = use commit
	#  r, reword = use commit, but edit the commit message
	#  e, edit = use commit, but stop for amending
	#  s, squash = use commit, but meld into previous commit
	#  f, fixup = like "squash", but discard this commit's log message
	#  x, exec = run command (the rest of the line) using shell
	#
	# If you remove a line here THAT COMMIT WILL BE LOST.
	# However, if you remove everything, the rebase will be aborted.
	#
Replace "pick" with the command below. If there are several commits you can squash some commits together.

## Git Config File
to open the config file in Textmate
	mate ~/.gitconfig

## Alias
Add these to the .gitconfig file under the [alias] section

Displays most recent pushable changes

	changes = log --stat master..HEAD	

Shows what files are able to be pushed to your origin

	files = show --pretty=format: --name-only

## Note
Marketplace Themes are located in the liferay-plugins-ee repo.