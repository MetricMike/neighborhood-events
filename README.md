## Installation with Cloud9

If you do not want to go through the trouble of installing Rails on your machine, you can easily set up the development environment with [Cloud9](https://c9.io/). After forking the neighborhood-events repo, sign up for a free Cloud9 account using your Github credentials.

Your fork of neighborhood-events should appear on the left side of your Cloud9 dashboard under 'Projects on Github.' Select it and click 'Clone to Edit.' Choose the pre-configured Ruby on Rails environment. The neighborhood-events fork will now be listed under 'My Projects.' Once cloned, click 'Start Editing.'

To continue using git, run the following in your workspace terminal:

    git remote add neighborhood-events 'git@github.com:[github username]/neighborhood-events'

You should now be able to get the application up by running:

    bundle install
    rails s -b $IP -p $PORT

Navigate to http://neighborhood-events-c9-[username].c9.io to see your app.