# README

How to run:

- Clone this repo locally and cd into it.

- Ensure ruby 4.0.5 is installed. I developed on Windows using:
https://rubyinstaller.org/downloads/

- With ruby installed run 'gem install bundler' in gitbash/PowerShell

- In the cloned directory run 'ruby bin/setup'. This should install requirements, setup the database, and spin up a local server. (After setting up once, you should be able to just run ruby bin/rails server to spin up again.)

- Open a browser and go to 'https://localhost:3000'