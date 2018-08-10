**gital** (gitlab repository cloner)

**gital** is a very simple tool to clone all projects in a [gitlab](http://www.gitlab.com) group.

gital works on OS X, Linux, and Windows Python 2.7 or Python 3 installed.

This project is inspired from [gitup](https://github.com/earwig/git-repo-updater) and has parts taken from there.

#Installation

Clone the repository:

    git clone http://github.com/harunyardimci/gitlab-repo-cloner.git
    cd gitlab-repo-cloner

Edit `gital/config.py` file and add your gitlab url and your personal PRIVATE_TOKEN,

    URL             = 'http://your-gitlab-host.org'
    POSTFIX         = '/api/v3/'
    PRIVATE_TOKEN   = 'your-private-key'

Please note that there is no '/' at the end of the url.

Start Installation

    sudo python setup.py install --force

`--force` will force the setuptools to update any prior version installed before.


#Usage

It is very simple to use. You just need to pass the group name (or id) as an argument to the `gital`

    gital my-group

This command will create a directory called `my-group` in the current directory and will clone all projects into that. If you already cloned some of the repositories, `gital` will skip those and continue with others.

You can also pass `--update` parameter to update existing repositories.

    gital my-group --update


#Uninstallation

You need to remove the files manually.

You can find the installed files by:

    sudo python setup.py install --record installed-files.txt

After you have the files, you can remove them by:

    sudo cat installed-files.txt | xargs rm -rf
