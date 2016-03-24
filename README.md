# Oraclize Example App

That's a sample application to demonstrate working with Oraclize in Ethereum Studio.

1. Clone the project to your workspace.
2. Select the project and start a sandbox. It will use Oraclize sandbox plugin with the following params (see ethereum.json):
  ```
  "plugins": {
    "oraclize": {
      "networkID": 161,
      "loadRealData": true
    }
  },
  ```
3. Open a dialog of contract `Contract` and call `update()` with value 100000000000000000 in advanced parameters.

You will see requests and response in Oraclize Panel and contract logs in Ethereum Console.