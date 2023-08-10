# NPM Package

## Uploading Private Packages To The NPM Registry

Before starting creating the package, we are assuming that the code is being hosted in a GitHub repository, and that the package has been finished and it's ready for production.

Once the repo is ready for production, then in the root directory of your repo do

1. `npm init --scope=@thrackle-io`

2. Follow the promps, but **make sure to keep the `@thrackle-io/` piece of the name as it is** since this is the part responsible for indicating the private nature of the package and the organization it belongs to. You can change the right side of the name if you wish. For instance `@thrackle-io/contracts`. Alternatively, if you have already assigned a name to your package not following these guidelines, you can still change the name in the `package.json` file.

3. Test your package locally on another project. To do this, install the package using the local path to it like this:

   3.1. Go to your hardhat-testing project directory or create one:

   ```
   cd ..
   mkdir <YOUR_TESTING_PROJECT_FOLDER_NAME>
   cd <YOUR_TESTING_PROJECT_FOLDER_NAME>
   npm install --save-dev hardhat
   npx hardhat
   ```

   3.2. Install your local npm package

   ```
   npm install ~/MyPackages/thrackle
   ```

   ##### \*_Replace [ ~/MyPackages/thrackle] with your local package path_

   3.3. Make sure your package works as expected by importing some contracts from the package and using them (You can inherit some contracts and try to use their functions or variables. see [Usage](#usage)). Try `npx hardhat compile` to make sure the imports work.

4. Once your package has been tested locally, it is time to publish it:

   ```
   npm publish
   ```

   Keep an eye on the terminal since you might have to do an `npm adduser` and/or do a 2FA verification if you have this feature enabled (recommended).

5. Visit https://npmjs.com/package/@thrackle-io/contracts _replace `contracts` with your package name_ and make sure it says `private` bellow the package name. If it doesn't, revisit the step-2 guidelines.

### Trouble shooting

- If you wish to unpublish, you can use `npm unpublish --force` from the root of your project.

## To install hardhat:

1. Go to the directory you want to save your project.

```
mkdir <YOUR_PROJECT_FOLDER_NAME>
cd <YOUR_PROJECT_FOLDER_NAME>
npm install --save-dev hardhat
npx hardhat
```

2. simply press ENTER to all options, or select your own for more customization.

## Usage

1. Install the package in the project root directory that you want to use it. To install the package simply follow the steps on the npm web page, although it is as simple as `npm i <PACKAGE_NAME>`. In our example, it would be `npm i @thrackle-io/contracts`.

2. Import the file with the contract you are interested in:

   ```
   import "@thrackle-io/contracts/Aprox.sol";
   ```

   or, if you want to be more specific...

   ```
   import {Aprox} from "@thrackle-io/contracts/Aprox.sol";
   ```

3. Then you can inherit the contracts or do whatever you need with them:

   ```
   import {Aprox} from "@thrackle-io/contracts/Aprox.sol";

   contract UsingThracklePackage is Aprox{
       ...
   }
   ```

That's it!

# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.ts
```
