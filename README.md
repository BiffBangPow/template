# Silverstripe skeleton

- Install the code with `composer create-project biffbangpow/template MyProject`
- Default values are included for the dev stack.  If you need to change anything (eg. ports, UIDs, passwords, etc.) you can do this by adding a .env file to the created directory containing the values you wish to override
- Enter the newly-created directory and run `./bin/build` to set up all the containers and install the base code
- All the project files are in the `/project` directory
- Bin tasks are still available for common operations (these should be run from the top-level directory):
- - `./bin/assets` will perform an asset build based on the project gulpfile.  By default this builds assets for the 'app' theme.  Add the `--production` flag to build a minified set of assets for deployment
  - `./bin/composer <args>` will run a composer command inside the php container.  Use for composer operations in the project
  - `./bin/elements` will install the core suite of BBP elements into the project.
  - `./bin/fixtures` will load fixture data (if present) into the project
  - `./bin/start` is a utility script to start the project.  Use this instead of manually running docker-compose
  - `./bin/yarn <args>` will run a yarn command in the build container.  Use to add node packages for the frontend build, etc 