const { DistributionAPI } = require('helios-core/common')

const ConfigManager = require('./configmanager')

// Old WesterosCraft url.
// exports.REMOTE_DISTRO_URL = 'https://helios-files.geekcorner.eu.org/distribution.json'
// exports.REMOTE_DISTRO_URL = 'http://localhost/nebula/distribution.json'
exports.REMOTE_DISTRO_URL = 'https://williamsgon.github.io/NebulaHC/distribution.json'

const api = new DistributionAPI(
    ConfigManager.getLauncherDirectory(),
    null, // Injected forcefully by the preloader.
    null, // Injected forcefully by the preloader.
    exports.REMOTE_DISTRO_URL,
    false
)

exports.DistroAPI = api