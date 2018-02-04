module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  // TODO: add more named networks and specify the corresponding network id.
  // TODO: like 'live: {}' which connect to the Ethereum public network
  networks: {    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*" // Match any network id
    }
  }
};
